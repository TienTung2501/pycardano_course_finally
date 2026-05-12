$ErrorActionPreference = 'Stop'

$src = 'D:\Code\pycardano_course_final\chapter3_cip68_implement\scriptdraf\transcript.md'
$cleanOut = 'D:\Code\pycardano_course_final\chapter3_cip68_implement\scriptdraf\transcript_bamsat_video.md'
$scriptOut = 'D:\Code\pycardano_course_final\chapter3_cip68_implement\scriptdraf\smartcontract_implement_bamsat_video.md'
$srtOut = 'D:\Code\pycardano_course_final\chapter3_cip68_implement\scriptdraf\smartcontract_implement_bamsat_video.srt'

function Strip-TimePrefix([string]$text) {
  $t = $text.Trim()
  if ([string]::IsNullOrWhiteSpace($t)) { return $t }

  # Split into tokens and remove duplicated copied time phrases like:
  # "4 giayXin", "1 phut, 6 giayOk", "6 phutnay"
  $parts = @($t -split '\s+')
  if ($parts.Count -eq 0) { return $t }

  $idx = 0

  # Optional leading number
  if ($idx -lt $parts.Count -and $parts[$idx] -match '^\d+$') {
    $idx++
  }

  if ($idx -lt $parts.Count) {
    $w = $parts[$idx]
    $wl = $w.ToLowerInvariant()

    # Minute token branch
    if ($wl.StartsWith('ph')) {
      if ($w.Length -gt 4) {
        $rem = $w.Substring(4).TrimStart(',').Trim()
        if ([string]::IsNullOrWhiteSpace($rem)) {
          $idx++
        } else {
          $parts[$idx] = $rem
        }
      } else {
        $idx++
      }

      if ($idx -lt $parts.Count -and $parts[$idx] -match '^\d+$') {
        $idx++
      }

      if ($idx -lt $parts.Count) {
        $w2 = $parts[$idx]
        $w2l = $w2.ToLowerInvariant()
        if ($w2l.StartsWith('gi')) {
          if ($w2.Length -gt 4) {
            $rem2 = $w2.Substring(4).Trim()
            if ([string]::IsNullOrWhiteSpace($rem2)) {
              $idx++
            } else {
              $parts[$idx] = $rem2
            }
          } else {
            $idx++
          }
        }
      }
    }
    # Second token branch
    elseif ($wl.StartsWith('gi')) {
      if ($w.Length -gt 4) {
        $rem3 = $w.Substring(4).Trim()
        if ([string]::IsNullOrWhiteSpace($rem3)) {
          $idx++
        } else {
          $parts[$idx] = $rem3
        }
      } else {
        $idx++
      }
    }
  }

  if ($idx -ge $parts.Count) { return '' }

  $remain = @()
  for ($i = $idx; $i -lt $parts.Count; $i++) {
    if (-not [string]::IsNullOrWhiteSpace($parts[$i])) {
      $remain += $parts[$i]
    }
  }

  $out = ($remain -join ' ').Trim()
  $out = $out.TrimStart(',').Trim()
  return $out
}

function Fix-Text([string]$text) {
  $t = $text.Trim()
  if ([string]::IsNullOrWhiteSpace($t)) { return $null }

  $t = Strip-TimePrefix $t
  if ([string]::IsNullOrWhiteSpace($t)) { return $null }

  # Normalize common technical misrecognitions while keeping spoken style
  $map = @(
    @('(?i)\bshift\s*68\b', 'CIP-68'),
    @('(?i)\bI\s*can\s*build\b', 'aiken build'),
    @('(?i)\bICEN\b', 'Aiken'),
    @('(?i)\bIken\b', 'Aiken'),
    @('(?i)\bicon\b', 'Aiken'),
    @('(?i)\bBluetooth\s*V?3\b', 'Plutus V3'),
    @('(?i)\bBluetooth\b', 'Plutus'),
    @('(?i)\bpolosy\b', 'policy'),
    @('(?i)\bPolos\s*ID\b', 'Policy ID'),
    @('(?i)\bpolosy\s*ID\b', 'policy ID'),
    @('(?i)\buteko\b', 'UTxO'),
    @('(?i)\bUTO\b', 'UTxO'),
    @('(?i)\bUTXO\b', 'UTxO'),
    @('(?i)\bprofit\b', 'prefix'),
    @('(?i)\bby\s*array\b', 'bytearray'),
    @('(?i)\bCanadano\b', 'Cardano'),
    @('(?i)\bBluot\.\s*Jason\b', 'plutus.json'),
    @('(?i)\bshift\s*68\.AK\b', 'cip68.ak')
  )

  foreach ($pair in $map) {
    $t = [regex]::Replace($t, $pair[0], $pair[1])
  }

  # Fix frequent terms
  $t = $t.Replace('public key head', 'public key hash')
  $t = $t.Replace('b token', 'burn token')
  $t = $t.Replace('bn token', 'burn token')
  $t = $t.Replace('toen', 'token')
  $t = $t.Replace('reven token', 'reference token')
  $t = $t.Replace('refer token', 'reference token')
  $t = $t.Replace('access name', 'asset name')
  $t = $t.Replace('oer', 'owner')
  $t = $t.Replace('follow ID', 'policy ID')

  $t = [regex]::Replace($t, '\s+', ' ').Trim()
  return $t
}

function To-SrtTime([double]$seconds) {
  if ($seconds -lt 0) { $seconds = 0 }
  $ms = [math]::Round($seconds * 1000)
  $ts = [TimeSpan]::FromMilliseconds($ms)
  return ('{0:D2}:{1:D2}:{2:D2},{3:D3}' -f [int]$ts.TotalHours, $ts.Minutes, $ts.Seconds, $ts.Milliseconds)
}

$lines = Get-Content -LiteralPath $src -Encoding UTF8
$rawEntries = New-Object System.Collections.Generic.List[object]

foreach ($line in $lines) {
  if ([string]::IsNullOrWhiteSpace($line)) { continue }
  $m = [regex]::Match($line, '^(?<min>\d+):(?<sec>\d{2})\d*\s*(?<rest>.*)$')
  if (-not $m.Success) { continue }

  $min = [int]$m.Groups['min'].Value
  $sec = [int]$m.Groups['sec'].Value
  $startSec = [double]($min * 60 + $sec)
  $text = Fix-Text($m.Groups['rest'].Value)
  if ([string]::IsNullOrWhiteSpace($text)) { continue }

  $rawEntries.Add([PSCustomObject]@{
    StartSec = $startSec
    Min = $min
    Sec = $sec
    Text = $text
  }) | Out-Null
}

# Merge very short broken fragments into previous line
$entries = New-Object System.Collections.Generic.List[object]
foreach ($e in $rawEntries) {
  if ($entries.Count -gt 0) {
    $prev = $entries[$entries.Count - 1]
    $gap = $e.StartSec - $prev.StartSec
    if (($e.Text.Length -le 10) -and ($gap -le 8)) {
      $prev.Text = ($prev.Text + ' ' + $e.Text).Trim()
      continue
    }
  }
  $entries.Add([PSCustomObject]@{
    StartSec = $e.StartSec
    Min = $e.Min
    Sec = $e.Sec
    Text = $e.Text
  }) | Out-Null
}

# Build cleaned transcript markdown with timestamps
$md = New-Object System.Collections.Generic.List[string]
$md.Add('# Transcript bam sat video (da sua chinh ta nhe)') | Out-Null
$md.Add('') | Out-Null
$md.Add('- Nguon: transcript tho do ban cung cap.') | Out-Null
$md.Add('- Nguyen tac: giu cach noi gan nguyen van, chi sua loi nhan dien va thuat ngu ky thuat ro rang.') | Out-Null
$md.Add('') | Out-Null
foreach ($e in $entries) {
  $md.Add(('[{0:D2}:{1:D2}] {2}' -f $e.Min, $e.Sec, $e.Text)) | Out-Null
}
Set-Content -LiteralPath $cleanOut -Value $md -Encoding UTF8

# Build speaking script variant without timestamps
$script = New-Object System.Collections.Generic.List[string]
$script.Add('# Script bam sat video - CIP-68 smart contract implement') | Out-Null
$script.Add('') | Out-Null
$script.Add('Luu y: Ban nay giu phong cach noi tu nhien de ban de khop lai khi lam phu de.') | Out-Null
$script.Add('') | Out-Null
foreach ($e in $entries) {
  $script.Add($e.Text) | Out-Null
}
Set-Content -LiteralPath $scriptOut -Value $script -Encoding UTF8

# Build subtitle SRT
$srt = New-Object System.Collections.Generic.List[string]
for ($i = 0; $i -lt $entries.Count; $i++) {
  $cur = $entries[$i]
  $start = $cur.StartSec
  if ($i -lt $entries.Count - 1) {
    $next = $entries[$i + 1].StartSec
    $end = [Math]::Max($start + 1.2, $next - 0.2)
  } else {
    $end = $start + 4.0
  }

  $srt.Add(($i + 1).ToString()) | Out-Null
  $srt.Add(("{0} --> {1}" -f (To-SrtTime $start), (To-SrtTime $end))) | Out-Null
  $srt.Add($cur.Text) | Out-Null
  $srt.Add('') | Out-Null
}
Set-Content -LiteralPath $srtOut -Value $srt -Encoding UTF8

Write-Output ("Raw entries: {0}" -f $rawEntries.Count)
Write-Output ("Final entries: {0}" -f $entries.Count)
Write-Output ("Created: {0}" -f $cleanOut)
Write-Output ("Created: {0}" -f $scriptOut)
Write-Output ("Created: {0}" -f $srtOut)
