$ErrorActionPreference = 'Stop'

$path = Join-Path $PSScriptRoot 'transcript_bamsat_video.md'
if (-not (Test-Path -LiteralPath $path)) {
  throw "Cannot find file: $path"
}

$lines = Get-Content -LiteralPath $path -Encoding UTF8

$regexMap = @(
  @('(?i)\bmint\s+access\b', 'mint asset'),
  @('(?i)\bburn\s+access\b', 'burn asset'),
  @('(?i)\baccess\b', 'asset'),
  @('(?i)\bAPI\s+point\b', 'API endpoint'),
  @('(?i)\btrang\s+section\b', 'transaction'),
  @('(?i)\bwebnet\b|\bWN\s*set\b|\bwit\s*with\s*set\b', 'witness set'),
  @('(?i)\bch\u01b0\s*k\u00fd\b', 'chu ky'),
  @('(?i)\bpublic\s+key\s+head\b', 'public key hash'),
  @('(?i)\bmulti\s*access\b|\bmultiass\b|\bmultiet\b', 'multi-asset'),
  @('(?i)\brefer\s+access\s+name\b', 'reference asset name'),
  @('(?i)\bvalid\s+integration\b', 'wallet integration'),
  @('(?i)\bconnect\s+valid\b', 'connect wallet'),
  $ErrorActionPreference = 'Stop'

  $path = Join-Path $PSScriptRoot 'transcript_bamsat_video.md'
  if (-not (Test-Path -LiteralPath $path)) {
    throw "Cannot find file: $path"
  }

  $lines = Get-Content -LiteralPath $path -Encoding UTF8

  $regexMap = @(
    @('(?i)\bmint\s+access\b', 'mint asset'),
    @('(?i)\bburn\s+access\b', 'burn asset'),
    @('(?i)\baccess\b', 'asset'),
    @('(?i)\bAPI\s+point\b', 'API endpoint'),
    @('(?i)\btrang\s+section\b', 'transaction'),
    @('(?i)\bwebnet\b|\bWN\s*set\b|\bwit\s*with\s*set\b', 'witness set'),
    @('(?i)\bch\u01b0\s*k\u00fd\b', 'chu ky'),
    @('(?i)\bpublic\s+key\s+head\b', 'public key hash'),
    @('(?i)\bmulti\s*access\b|\bmultiass\b|\bmultiet\b', 'multi-asset'),
    @('(?i)\brefer\s+access\s+name\b', 'reference asset name'),
    @('(?i)\bvalid\s+integration\b', 'wallet integration'),
    @('(?i)\bconnect\s+valid\b', 'connect wallet'),
    @('(?i)\bvalid\s+ID\b', 'wallet ID'),
    @('(?i)\bAPI\s+Wall\b', 'API wallet'),
    @('(?i)\bWall\s+context\b', 'Wallet context'),
    @('(?i)\bCano\b', 'Cardano'),
    @('(?i)\bCardano\s+Scan\b', 'Cardanoscan'),
    @('(?i)\bon-chain-chain\b', 'on-chain'),
    @('(?i)\bon\s+chain\s+chain\b', 'on-chain'),
    @('(?i)\bDynamic\s+Access\b', 'Dynamic Asset'),
    @('(?i)\bprofit\b', 'prefix'),
    @('(?i)\bUTXO\b|\bUTO\b|\bUXO\b', 'UTxO'),
    @('(?i)\bget\s+valid\s+info\b', 'get wallet info'),
    @('(?i)\bNext\.js\.js\b', 'Next.js'),
    @('(?i)\bAing\s+context\s+manager\b', 'async context manager'),
    @('(?i)\bB\s+toen\b', 'burn token'),
    @('(?i)\bAPI\s+end\s*point\b', 'API endpoint'),
    @('(?i)\bAPI\s+and\s*point\b', 'API endpoint'),
    @('(?i)\bAPI\s+shift\b', 'API CIP-30'),
    @('(?i)\bWness\b', 'witness set'),
    @('(?i)\bTX\s+WNE\s+set\b', 'TX witness set'),
    @('(?i)\btxcp\b', 'tx'),
    @('(?i)\bcnnet\b', 'current witness'),
    @('(?i)\bwallet\s+widnet\b', 'wallet witness set'),
    @('(?i)\bWNET\b', 'witness set'),
    @('(?i)\bchmetion\b', 'description'),
    @('(?i)\bAPI\s+walletet\b', 'API wallet'),
    @('(?i)\baddress\.Llen\b', 'address.Length'),
    @('(?i)\bunuse\s+address\b', 'unused address'),
    @('(?i)\bcon\s+sti\s+away\s+valid\b', 'const selected wallet'),
    @('(?i)\bblog\s+for\s+project\b', 'blockfrost project')
  )

  $plainMap = @(
    @('buill giao dich', 'build giao dich'),
    @('Bluetooth chen n', 'plutus.json'),
    @('Vol cidd', 'policy ID'),
    @('tx context nay app', 'tx context app'),
    @('source code', 'source code'),
    @('API walletet', 'API wallet')
  )

  $out = foreach ($line in $lines) {
    $l = $line

    foreach ($pair in $regexMap) {
      $l = [regex]::Replace($l, $pair[0], $pair[1])
    }

    foreach ($pair in $plainMap) {
      $l = $l.Replace($pair[0], $pair[1])
    }

    $l
  }

  Set-Content -LiteralPath $path -Value $out -Encoding UTF8
  Write-Output "Transcript cleanup pass completed: $path"
