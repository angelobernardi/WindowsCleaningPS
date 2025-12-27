$userTemp = $env:temp
$windowsTemp = [System.Environment]::GetEnvironmentVariable('TEMP','Machine')
$prefetch = $env:windir + "\Prefetch"
$cleanmgrPath = “$env:SystemRoot\System32\cleanmgr.exe”

Write-Host "Vaciando Papelera de reciclaje" -ForegroundColor "Green"
Clear-RecycleBin -Force
Write-Host "Limpieza de temporales de usuario:" $userTemp  -ForegroundColor "Green"
Get-ChildItem $userTemp -Recurse | Remove-Item -Confirm:$false -Recurse -ErrorAction SilentlyContinue
Write-Host "Limpieza de temporales de windows:" $windowsTemp  -ForegroundColor "Green"
Get-ChildItem $windowsTemp -Recurse | Remove-Item -Confirm:$false -Recurse -ErrorAction SilentlyContinue
Write-Host "Limpieza de prefetch:" $prefetch  -ForegroundColor "Green"
Get-ChildItem $prefetch -Recurse | Remove-Item -Confirm:$false -Recurse -ErrorAction SilentlyContinue
Write-Host "Administrador de limpieza de discos" -ForegroundColor "Green"
Start-Process $cleanmgrPath -ArgumentList “/sagerun:65535 /cleanup:30” -Wait