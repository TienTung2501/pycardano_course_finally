$ErrorActionPreference = 'Stop'

$base = Split-Path -Parent $MyInvocation.MyCommand.Path
$src = Join-Path $base 'transcript.md'
$cleanOut = Join-Path $base 'transcript_bamsat_video.md'
$scriptOut = Join-Path $base 'frontend_backend_bamsat_video.md'
$srt1Out = Join-Path $base 'frontend_backend_part1_fixed.srt'
$srt2Out = Join-Path $base 'frontend_backend_part2_fixed.srt'
$srt3Out = Join-Path $base 'frontend_backend_part3_fixed.srt'
$srt4Out = Join-Path $base 'frontend_backend_part4_fixed.srt'

if (-not (Test-Path -LiteralPath $src)) {
  throw "Cannot find transcript file: $src"
}

function Remove-Diacritic([string]$inputText) {
  if ([string]::IsNullOrWhiteSpace($inputText)) { return '' }

  $normalized = $inputText.Normalize([Text.NormalizationForm]::FormD)
  $sb = New-Object System.Text.StringBuilder

  foreach ($ch in $normalized.ToCharArray()) {
    $cat = [System.Globalization.CharUnicodeInfo]::GetUnicodeCategory($ch)
    if ($cat -ne [System.Globalization.UnicodeCategory]::NonSpacingMark) {
      [void]$sb.Append($ch)
    }
  }

  return $sb.ToString().Normalize([Text.NormalizationForm]::FormC)
}

function Parse-TimeLine([string]$line) {
  $trim = $line.Trim()
  if ([string]::IsNullOrWhiteSpace($trim)) { return $null }

  $m = [regex]::Match($trim, '^(?<h>\d+):(?<m>\d{2}):(?<s>\d{2})(?<dup>\d*)\s*(?<rest>.*)$')
  if ($m.Success) {
    $h = [int]$m.Groups['h'].Value
    $mm = [int]$m.Groups['m'].Value
    $ss = [int]$m.Groups['s'].Value
    return [PSCustomObject]@{
      StartSec = [double]($h * 3600 + $mm * 60 + $ss)
      Rest = $m.Groups['rest'].Value
    }
  }

  $m2 = [regex]::Match($trim, '^(?<m>\d+):(?<s>\d{2})(?<dup>\d*)\s*(?<rest>.*)$')
  if ($m2.Success) {
    $mm = [int]$m2.Groups['m'].Value
    $ss = [int]$m2.Groups['s'].Value
    return [PSCustomObject]@{
      StartSec = [double]($mm * 60 + $ss)
      Rest = $m2.Groups['rest'].Value
    }
  }

  return $null
}

function Strip-TimeNoise([string]$text) {
  $t = $text.Trim()
  if ([string]::IsNullOrWhiteSpace($t)) { return '' }

  # Insert a space when ASR glues lowercase and uppercase words.
  $t = [regex]::Replace($t, '(?<=\p{Ll})(?=\p{Lu})', ' ')

  for ($i = 0; $i -lt 8; $i++) {
    $old = $t

    # Remove copied pieces like: "1 phut", "9 giay", "1 gio".
    $t = [regex]::Replace($t, '^\s*\d+\s*\S+\s*', '')
    $t = $t.TrimStart(' ', ',', '.', ':', ';', '-')

    # Remove leading time-unit tokens (plain form).
    $m = [regex]::Match($t, '^\s*(?<w>\S+)\s*(?<rest>.*)$')
    if ($m.Success) {
      $w = $m.Groups['w'].Value
      $wPlain = (Remove-Diacritic $w).ToLowerInvariant()
      if ($wPlain.StartsWith('giay') -or $wPlain.StartsWith('phut') -or $wPlain.StartsWith('gio')) {
        $t = $m.Groups['rest'].Value
        $t = $t.TrimStart(' ', ',', '.', ':', ';', '-')
      }
    }

    if ($t -eq $old) { break }
  }

  return $t.Trim()
}

function Fix-Text([string]$text) {
  $t = Strip-TimeNoise $text
  if ([string]::IsNullOrWhiteSpace($t)) { return $null }

  $map = @(
    @('(?i)\bB\s*Cadano\b|\bBadano\b|\bCadano\b|\bCanadano\b|\bCanano\b', 'Cardano'),
    @('(?i)\bby\s*Canadano\b|\bBY\s*Canano\b|\bB\s*Canano\b|\bBano\b|\bby\s*Cardano\b', 'PyCardano'),
    @('(?i)\bShift\s*68\b|\bship\s*68\b', 'CIP-68'),
    @('(?i)\bshift\s*30\b|\bship\s*30\b', 'CIP-30'),
    @('(?i)\bfront\s*end\b|\bfont\s*end\b|\bforend\b|\bforen\b|\bonend\b', 'frontend'),
    @('(?i)\bback\s*end\b|\bback\s*in\b', 'backend'),
    @('(?i)\bnext\s*js\b|\bnjs\b', 'Next.js'),
    @('(?i)\bnext\s*\.$', 'Next.js.'),
    @('(?i)\bph[aá]t\s*api\b|\bPH\s*API\b|\bPH\s*PBI\b', 'FastAPI'),
    @('(?i)\bUVCE\b|\bUVICORE\b', 'Uvicorn'),
    @('(?i)\bBandanic\b|\bBantatic\b|\bPantic\b|\bBan\s*Bantic\b', 'Pydantic'),
    @('(?i)\benvoy\b|\bendpint\b|\bendp\b', 'endpoint'),
    @('(?i)\bred\s*bond\b|\brespon\b', 'response'),
    @('(?i)\btrang\s*session\b|\btrang\s*section\b', 'transaction'),
    @('(?i)\bwidnet\s*set\b|\bwitnet\s*set\b|\bwitness\s*set\b|\bwnet\s*set\b|\bwebnet\s*set\b|\bwiness\s*set\b', 'witness set'),
    @('(?i)\bBluot\b|\bBluot\s*Jason\b|\bBluetooth\s*ch[êe]n\b|\bblu\s*jason\b', 'plutus.json'),
    @('(?i)\bblock\s*for\b|\bBlock\s*for\b', 'Blockfrost'),
    @('(?i)\bUTO\b|\bUXO\b|\bute\s*oo\b|\bUO\b', 'UTxO'),
    @('(?i)\bmidware\b', 'middleware'),
    @('(?i)\bgitub\b|\bhit\s*hub\b', 'GitHub'),
    @('(?i)\bclon\b', 'clone'),
    @('(?i)\bmin\s*tocen\b', 'mint token'),
    @('(?i)\bunside\b|\bunsize\b', 'unsigned'),
    @('(?i)\bCBO\b|\bCB\b', 'CBOR'),
    @('(?i)\bwallet\s*abi\b|\bwallet\.apisiz\s*abi\b', 'wallet API'),
    @('(?i)\bvalid\s*address\b', 'wallet address'),
    @('(?i)\bBLUS\b|\bblurus\b', 'plutus'),
    @('(?i)\bnwork\s+token\s+midx\b', 'network token mismatch'),
    @('(?i)\bfree\s+prodot\b', 'preprod')
  )

  foreach ($pair in $map) {
    $t = [regex]::Replace($t, $pair[0], $pair[1])
  }

  $t = $t.Replace('off tren', 'off-chain')
  $t = $t.Replace('off trÃªn', 'off-chain')
  $t = $t.Replace('on tren', 'on-chain')
  $t = $t.Replace('on trÃªn', 'on-chain')
  $t = $t.Replace('upset', 'asset')
  $t = $t.Replace('bn asset', 'burn asset')
  $t = $t.Replace('min asset', 'mint asset')
  $t = $t.Replace('min token', 'mint token')
  $t = $t.Replace('teamate', 'template')
  $t = $t.Replace('template forame', 'template frontend')
  $t = $t.Replace('shift CIP-68', 'script CIP-68')
  $t = $t.Replace('API mean', 'API mint')
  $t = $t.Replace('point API mint', 'endpoint API mint')

  $t = [regex]::Replace($t, '(?i)\boff\s*tr[eê]n\b', 'off-chain')
  $t = [regex]::Replace($t, '(?i)\bon\s*tr[eê]n\b', 'on-chain')
  $t = [regex]::Replace($t, '(?i)\b[ôo]c\s*x[ôo]c\s*code\b', 'source code')
  $t = [regex]::Replace($t, '(?i)\bx[ôo]c\s*c[ũu]\b', 'source cũ')
  $t = [regex]::Replace($t, '(?i)\bp[úu]\s+tất\s+cả\s+code\b', 'push tất cả code')
  $t = [regex]::Replace($t, '(?i)\bbuill\s+giao\s+d[iị]ch\b', 'build giao dịch')
  $t = [regex]::Replace($t, '(?i)\bAPI\s+point\b', 'API endpoint')

  # Replace standalone "min" with "mint" in common contexts.
  $t = [regex]::Replace($t, '(?i)\bmin\b', 'mint')
  $t = [regex]::Replace($t, '(?i)\bBN\b', 'burn')

  # Fix common command phrasing.
  $t = [regex]::Replace($t, '(?i)\bmpm\s+install\b|\bnpm\s+install\s+npm\s+install\b', 'npm install')
  $t = [regex]::Replace($t, '(?i)\bmpm\s+r\b|\brunf\s+mpm\s+r\b', 'npm run dev')
  $t = [regex]::Replace($t, '(?i)\bpython\s+run\s+backend\b', 'python run_backend.py')

  $t = [regex]::Replace($t, '\s+', ' ').Trim()
  $t = $t.TrimStart(',', '.', ';', ':', '-')
  $t = $t.Trim()

  if ([string]::IsNullOrWhiteSpace($t)) { return $null }
  if ($t -match '^[\W_]+$') { return $null }
  return $t
}

function To-SrtTime([double]$seconds) {
  if ($seconds -lt 0) { $seconds = 0 }
  $ms = [math]::Round($seconds * 1000)
  $ts = [TimeSpan]::FromMilliseconds($ms)
  $hours = [int][Math]::Floor($ts.TotalHours)
  return ('{0:D2}:{1:D2}:{2:D2},{3:D3}' -f $hours, $ts.Minutes, $ts.Seconds, $ts.Milliseconds)
}

function To-Stamp([double]$seconds) {
  if ($seconds -lt 0) { $seconds = 0 }
  $whole = [int][Math]::Floor($seconds)
  $ts = [TimeSpan]::FromSeconds($whole)
  $hours = [int][Math]::Floor($ts.TotalHours)
  return ('[{0:D2}:{1:D2}:{2:D2}]' -f $hours, $ts.Minutes, $ts.Seconds)
}

function Wrap-Subtitle([string]$text, [int]$maxLen = 46) {
  if ([string]::IsNullOrWhiteSpace($text)) { return '' }
  if ($text.Length -le $maxLen) { return $text }

  $words = @($text -split '\s+')
  if ($words.Count -le 1) { return $text }

  $lines = New-Object System.Collections.Generic.List[string]
  $current = ''

  foreach ($w in $words) {
    if ([string]::IsNullOrWhiteSpace($current)) {
      $current = $w
      continue
    }

    if (($current.Length + 1 + $w.Length) -le $maxLen) {
      $current = "$current $w"
    }
    else {
      $lines.Add($current) | Out-Null
      $current = $w
    }
  }

  if (-not [string]::IsNullOrWhiteSpace($current)) {
    $lines.Add($current) | Out-Null
  }

  return ($lines -join "`n")
}

function Build-Srt([object[]]$partEntries, [string]$outPath) {
  $srt = New-Object System.Collections.Generic.List[string]

  for ($i = 0; $i -lt $partEntries.Count; $i++) {
    $cur = $partEntries[$i]
    $start = [double]$cur.StartSec

    if ($i -lt $partEntries.Count - 1) {
      $nextStart = [double]$partEntries[$i + 1].StartSec
      $proposed = [Math]::Max($start + 1.2, $nextStart - 0.15)
      $end = [Math]::Min($start + 6.0, $proposed)
    }
    else {
      $end = $start + 3.8
    }

    if ($end -le $start) { $end = $start + 1.2 }

    $textWrapped = Wrap-Subtitle $cur.Text

    $srt.Add(($i + 1).ToString()) | Out-Null
    $srt.Add(("{0} --> {1}" -f (To-SrtTime $start), (To-SrtTime $end))) | Out-Null
    $srt.Add($textWrapped) | Out-Null
    $srt.Add('') | Out-Null
  }

  Set-Content -LiteralPath $outPath -Value $srt -Encoding UTF8
}

$lines = Get-Content -LiteralPath $src -Encoding UTF8
$entriesRaw = New-Object System.Collections.Generic.List[object]

$part = 1
$links = @{
  1 = ''
  2 = ''
  3 = ''
  4 = ''
}

foreach ($line in $lines) {
  $linePlain = (Remove-Diacritic $line).ToLowerInvariant()

  $pm = [regex]::Match($linePlain, 'phan\s*([1-4])')
  if ($pm.Success) {
    $part = [int]$pm.Groups[1].Value
  }

  if ($line -match 'https?://\S+') {
    $url = $Matches[0].TrimEnd('=')
    if ([string]::IsNullOrWhiteSpace($links[$part])) {
      $links[$part] = $url
    }
    elseif ($linePlain -match 'phan\s*([1-4])') {
      $p2 = [int]$Matches[1]
      if ([string]::IsNullOrWhiteSpace($links[$p2])) {
        $links[$p2] = $url
      }
    }
  }

  if ($line -match '^=+') { continue }
  if ($linePlain -match '^\s*video\s+co\s+\d+\s+phan') { continue }

  $parsed = Parse-TimeLine $line
  if ($null -eq $parsed) { continue }

  $fixed = Fix-Text $parsed.Rest
  if ([string]::IsNullOrWhiteSpace($fixed)) { continue }

  $entriesRaw.Add([PSCustomObject]@{
    Part = $part
    StartSec = $parsed.StartSec
    Text = $fixed
  }) | Out-Null
}

$entries = New-Object System.Collections.Generic.List[object]
foreach ($p in @(1, 2, 3, 4)) {
  $partEntries = @($entriesRaw | Where-Object { $_.Part -eq $p } | Sort-Object StartSec)
  foreach ($e in $partEntries) {
    if ($entries.Count -gt 0) {
      $prev = $entries[$entries.Count - 1]
      if ($prev.Part -eq $p) {
        $gap = $e.StartSec - $prev.StartSec
        $plain = (Remove-Diacritic $e.Text).ToLowerInvariant()
        $isShort = $e.Text.Length -le 12 -or $plain -match '^(ok|day|u|um|roi|ah|a)\.?$'
        if ($isShort -and $gap -le 5) {
          $prev.Text = ($prev.Text + ' ' + $e.Text).Trim()
          continue
        }
      }
    }

    $entries.Add([PSCustomObject]@{
      Part = $e.Part
      StartSec = $e.StartSec
      Text = $e.Text
    }) | Out-Null
  }
}

$partTitles = @{
  1 = 'Part 1 - Backend coding (no run yet)'
  2 = 'Part 2 - Backend run'
  3 = 'Part 3 - Frontend coding (no demo yet)'
  4 = 'Part 4 - Frontend demo'
}

$md = New-Object System.Collections.Generic.List[string]
$md.Add('# Transcript bam sat video - Frontend + Backend CIP-68 (ASR cleaned)') | Out-Null
$md.Add('') | Out-Null
$md.Add('- Goal: keep natural speaking style, fix ASR noise, normalize key technical terms.') | Out-Null
$md.Add('- Note: Source has 4 videos, so subtitles are exported as 4 SRT files.') | Out-Null
$md.Add('') | Out-Null

foreach ($p in @(1, 2, 3, 4)) {
  $pe = @($entries | Where-Object { $_.Part -eq $p })
  if ($pe.Count -eq 0) { continue }

  $md.Add(("## {0}" -f $partTitles[$p])) | Out-Null
  if (-not [string]::IsNullOrWhiteSpace($links[$p])) {
    $md.Add(("- Video link: {0}" -f $links[$p])) | Out-Null
  }
  $md.Add('') | Out-Null

  foreach ($e in $pe) {
    $md.Add(("{0} {1}" -f (To-Stamp $e.StartSec), $e.Text)) | Out-Null
  }

  $md.Add('') | Out-Null
}

Set-Content -LiteralPath $cleanOut -Value $md -Encoding UTF8

$script = New-Object System.Collections.Generic.List[string]
$script.Add('# Script bam sat video - Frontend + Backend CIP-68') | Out-Null
$script.Add('') | Out-Null

foreach ($p in @(1, 2, 3, 4)) {
  $pe = @($entries | Where-Object { $_.Part -eq $p })
  if ($pe.Count -eq 0) { continue }

  $script.Add(("## {0}" -f $partTitles[$p])) | Out-Null
  if (-not [string]::IsNullOrWhiteSpace($links[$p])) {
    $script.Add(("Link: {0}" -f $links[$p])) | Out-Null
  }
  $script.Add('') | Out-Null

  foreach ($e in $pe) {
    $script.Add($e.Text) | Out-Null
  }

  $script.Add('') | Out-Null
}

Set-Content -LiteralPath $scriptOut -Value $script -Encoding UTF8

$part1 = @($entries | Where-Object { $_.Part -eq 1 } | Sort-Object StartSec)
$part2 = @($entries | Where-Object { $_.Part -eq 2 } | Sort-Object StartSec)
$part3 = @($entries | Where-Object { $_.Part -eq 3 } | Sort-Object StartSec)
$part4 = @($entries | Where-Object { $_.Part -eq 4 } | Sort-Object StartSec)

Build-Srt $part1 $srt1Out
Build-Srt $part2 $srt2Out
Build-Srt $part3 $srt3Out
Build-Srt $part4 $srt4Out

Write-Output ("Raw entries: {0}" -f $entriesRaw.Count)
Write-Output ("Final entries: {0}" -f $entries.Count)
Write-Output ("Part 1 entries: {0}" -f $part1.Count)
Write-Output ("Part 2 entries: {0}" -f $part2.Count)
Write-Output ("Part 3 entries: {0}" -f $part3.Count)
Write-Output ("Part 4 entries: {0}" -f $part4.Count)
Write-Output ("Created: {0}" -f $cleanOut)
Write-Output ("Created: {0}" -f $scriptOut)
Write-Output ("Created: {0}" -f $srt1Out)
Write-Output ("Created: {0}" -f $srt2Out)
Write-Output ("Created: {0}" -f $srt3Out)
Write-Output ("Created: {0}" -f $srt4Out)
