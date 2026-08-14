$ErrorActionPreference = 'Stop'
$base = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = Join-Path $base 'Diadoc_to_1C_EDO_FormModule_v0.1.21.bsl'
$parts = 0..9 | ForEach-Object { Join-Path $base ('FormModule.part{0:d2}.bsl' -f $_) }
$stream = [System.IO.File]::Open($out, [System.IO.FileMode]::Create, [System.IO.FileAccess]::Write)
try {
    foreach ($part in $parts) {
        $bytes = [System.IO.File]::ReadAllBytes($part)
        $stream.Write($bytes, 0, $bytes.Length)
    }
}
finally {
    $stream.Dispose()
}
$hash = (Get-FileHash -Algorithm SHA256 $out).Hash.ToLowerInvariant()
$expected = 'f4716f69998fc1f886f2d3df86ec849a8d9091b5c5580914c7ab780c6b6a4eaf'
if ($hash -ne $expected) { throw "SHA256 mismatch: $hash" }
Write-Host "PASS: $out"
Write-Host "SHA256=$hash"
