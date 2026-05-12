$ErrorActionPreference = 'Stop'

$base = Split-Path -Parent $MyInvocation.MyCommand.Path
$src = Join-Path $base 'transcript.md'
$cleanOut = Join-Path $base 'transcript_bamsat_video.md'
$scriptOut = Join-Path $base 'offchain_code_bamsat_video.md'
$srt1Out = Join-Path $base 'offchain_code_part1_fixed.srt'
$srt2Out = Join-Path $base 'offchain_code_part2_fixed.srt'

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

  # Insert a space when ASR glues a lowercase word and next uppercase word.
  $t = [regex]::Replace($t, '(?<=\p{Ll})(?=\p{Lu})', ' ')

  for ($i = 0; $i -lt 8; $i++) {
    $old = $t

    # Remove fragments like: "1 phut", "9 giay", "1 gio" that are copied into text.
    $t = [regex]::Replace($t, '^\s*\d+\s*\S+\s*', '')
    $t = $t.TrimStart(' ', ',', '.', ':', ';', '-')

    # Remove leading time-unit token if still present (giay/phut/gio variants).
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
    @('(?i)\bBadano\b|\bBano\b|\bCadano\b|\bCanadano\b', 'Cardano'),
    @('(?i)\bPano\b', 'PyCardano'),
    @('(?i)\bby\s*Cadano\b|\bBY\s*Cadano\b|\bby\s*Cardano\b|\bBY\s*Cardano\b', 'PyCardano'),
    @('(?i)\bShift\s*68\b|\bship\s*68\b|\bcp\s*68\b|\bch\s*8\b', 'CIP-68'),
    @('(?i)\bPreort\s*Testlet\b|\bPreprod\s*Testlet\b|\bPreort\s*Testnet\b', 'Preprod Testnet'),
    @('(?i)\bBlockford\b|\bBlog\s*for\b|\bblock\s*for\b', 'Blockfrost'),
    @('(?i)\bINV\b', '.env'),
    @('(?i)\brequirement\.txt\b', 'requirements.txt'),
    @('(?i)\bgive\s+install\s+requirement\b', 'pip install -r requirements.txt'),
    @('(?i)\bShift\s*68\s*Unitive\b|\bShift\s*682\b|\bShift\s*68\s*YouTube\b', 'cip68_utils.py'),
    @('(?i)\bShift\s*68\s*Operation\b', 'cip68_operations.py'),
    @('(?i)\bBluetooth\s*V?3\b|\bBluetoot[h]?\s*V?3\b', 'Plutus V3'),
    @('(?i)\bBluetooth\b', 'Plutus'),
    @('(?i)\bPlot\s*Jason\b|\bBlot\s*Jason\b|\bBlu\s*Jason\b|\bblotus\.chach\b|\bplutus\.chjon\b|\bblotus\.json\b', 'plutus.json'),
    @('(?i)\bpolosy\b', 'policy'),
    @('(?i)\bpolos\s*id\b|\bpoy\s*id\b|\bpoloid\b|\bpoly\s*id\b|\bbolid\b|\bbolosi\s*id\b|\bfollow\s*id\b', 'policy ID'),
    @('(?i)\buteko\b|\bUTO\b|\buto\b|\bUXO\b|\buxo\b|\buxto\b|\bUXTO\b', 'UTxO'),
    @('(?i)\baccess\b', 'asset'),
    @('(?i)\bprofit\b|\bprefit\b|\bgrafit\b', 'prefix'),
    @('(?i)\bpublic key head\b', 'public key hash'),
    @('(?i)\bmemonic\b', 'mnemonic'),
    @('(?i)\bshit face\b', 'seed phrase'),
    @('(?i)\bwallet from sheet\b', 'wallet from seed'),
    @('(?i)\bTrang section\b|\btrang section\b', 'transaction'),
    @('(?i)\bview trang section\b|\bbuild trang section\b', 'build transaction')
  )

  foreach ($pair in $map) {
    $t = [regex]::Replace($t, $pair[0], $pair[1])
  }

  $t = $t.Replace('off trÃªn', 'off-chain')
  $t = $t.Replace('off tren', 'off-chain')
  $t = $t.Replace('on trÃªn', 'on-chain')
  $t = $t.Replace('on tren', 'on-chain')
  $t = $t.Replace('min token', 'mint token')
  $t = $t.Replace('b token', 'burn token')
  $t = $t.Replace('bn token', 'burn token')
  $t = $t.Replace('refer token', 'reference token')
  $t = $t.Replace('reven token', 'reference token')
  $t = $t.Replace('honner', 'owner')
  $t = $t.Replace('follow ID', 'policy ID')

  # Replace standalone "min" with "mint".
  $t = [regex]::Replace($t, '(?i)\bmin\b', 'mint')

  $t = [regex]::Replace($t, '\s+', ' ').Trim()
  $t = $t.TrimStart(',', '.', ';', ':', '-')
  $t = $t.Trim()

  if ([string]::IsNullOrWhiteSpace($t)) { return $null }
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

$lines = Get-Content -LiteralPath $src -Encoding UTF8
$entriesRaw = New-Object System.Collections.Generic.List[object]

$part = 1
$link1 = ''
$link2 = ''

foreach ($line in $lines) {
  $linePlain = (Remove-Diacritic $line).ToLowerInvariant()

  if ($line -match 'https?://\S+') {
    if ($part -eq 1 -and [string]::IsNullOrWhiteSpace($link1)) {
      $link1 = $Matches[0].TrimEnd('=')
    }
    elseif ($part -eq 2 -and [string]::IsNullOrWhiteSpace($link2)) {
      $link2 = $Matches[0].TrimEnd('=')
    }
  }

  if ($linePlain -match 'phan\s*2') {
    $part = 2
    if ($line -match 'https?://\S+') {
      $link2 = $Matches[0].TrimEnd('=')
    }
    continue
  }

  if ($line -match '^=+') { continue }
  if ($linePlain -match '^\s*video\s+co\s+2\s+phan') { continue }

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
foreach ($p in @(1, 2)) {
  $partEntries = @($entriesRaw | Where-Object { $_.Part -eq $p } | Sort-Object StartSec)
  foreach ($e in $partEntries) {
    if ($entries.Count -gt 0) {
      $prev = $entries[$entries.Count - 1]
      if ($prev.Part -eq $p) {
        $gap = $e.StartSec - $prev.StartSec
        $plain = (Remove-Diacritic $e.Text).ToLowerInvariant()
        $isShort = $e.Text.Length -le 10 -or $plain -match '^(ok|day|u|um|roi)\.?$'
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

$md = New-Object System.Collections.Generic.List[string]
$md.Add('# Transcript bam sat video - Off-chain CIP-68 (ASR cleaned)') | Out-Null
$md.Add('') | Out-Null
$md.Add('- Goal: keep natural speaking style, fix ASR noise, normalize key technical terms.') | Out-Null
$md.Add('- Note: Source has 2 videos, so subtitles are exported as 2 SRT files.') | Out-Null
$md.Add('') | Out-Null

$md.Add('## Part 1 - Off-chain coding (no demo yet)') | Out-Null
if (-not [string]::IsNullOrWhiteSpace($link1)) {
  $md.Add("- Video link: $link1") | Out-Null
}
$md.Add('') | Out-Null

foreach ($e in $entries | Where-Object { $_.Part -eq 1 }) {
  $md.Add(("{0} {1}" -f (To-Stamp $e.StartSec), $e.Text)) | Out-Null
}

$md.Add('') | Out-Null
$md.Add('## Part 2 - Demo run') | Out-Null
if (-not [string]::IsNullOrWhiteSpace($link2)) {
  $md.Add("- Video link: $link2") | Out-Null
}
$md.Add('') | Out-Null

foreach ($e in $entries | Where-Object { $_.Part -eq 2 }) {
  $md.Add(("{0} {1}" -f (To-Stamp $e.StartSec), $e.Text)) | Out-Null
}

Set-Content -LiteralPath $cleanOut -Value $md -Encoding UTF8

$script = New-Object System.Collections.Generic.List[string]
$script.Add('# Script bam sat video - Off-chain CIP-68') | Out-Null
$script.Add('') | Out-Null
$script.Add('## Part 1') | Out-Null
if (-not [string]::IsNullOrWhiteSpace($link1)) {
  $script.Add("Link: $link1") | Out-Null
}
$script.Add('') | Out-Null

foreach ($e in $entries | Where-Object { $_.Part -eq 1 }) {
  $script.Add($e.Text) | Out-Null
}

$script.Add('') | Out-Null
$script.Add('## Part 2') | Out-Null
if (-not [string]::IsNullOrWhiteSpace($link2)) {
  $script.Add("Link: $link2") | Out-Null
}
$script.Add('') | Out-Null

foreach ($e in $entries | Where-Object { $_.Part -eq 2 }) {
  $script.Add($e.Text) | Out-Null
}

Set-Content -LiteralPath $scriptOut -Value $script -Encoding UTF8

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

    if ($end -le $start) {
      $end = $start + 1.2
    }

    $textWrapped = Wrap-Subtitle $cur.Text

    $srt.Add(($i + 1).ToString()) | Out-Null
    $srt.Add(("{0} --> {1}" -f (To-SrtTime $start), (To-SrtTime $end))) | Out-Null
    $srt.Add($textWrapped) | Out-Null
    $srt.Add('') | Out-Null
  }

  Set-Content -LiteralPath $outPath -Value $srt -Encoding UTF8
}

$part1 = @($entries | Where-Object { $_.Part -eq 1 } | Sort-Object StartSec)
$part2 = @($entries | Where-Object { $_.Part -eq 2 } | Sort-Object StartSec)

Build-Srt $part1 $srt1Out
Build-Srt $part2 $srt2Out

Write-Output ("Raw entries: {0}" -f $entriesRaw.Count)
Write-Output ("Final entries: {0}" -f $entries.Count)
Write-Output ("Part 1 entries: {0}" -f $part1.Count)
Write-Output ("Part 2 entries: {0}" -f $part2.Count)
Write-Output ("Created: {0}" -f $cleanOut)
Write-Output ("Created: {0}" -f $scriptOut)
Write-Output ("Created: {0}" -f $srt1Out)
Write-Output ("Created: {0}" -f $srt2Out)
