

function CompararHash{
  param ([String] $Path, $SignedHash, $Algorithm)
  Compare-Object -IncludeEqual -ReferenceObject ($(Get-FileHash -Path $Path -Algorithm $Algorithm | Select-Object Hash).Hash) -DifferenceObject ($SignedHash)
}

# Ejecutar > . $Path\file.ps1
# Script Modules https://docs.microsoft.com/en-us/powershell/scripting/learn/ps101/10-script-modules?view=powershell-7.1