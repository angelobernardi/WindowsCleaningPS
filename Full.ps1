Write-Host "Iniciando proceso de limpieza" -ForegroundColor "Blue"
$scriptPath = $PSScriptRoot

Write-Host "Limpieza de Papelera y Temporales" -ForegroundColor "Green"
& "$scriptPath\CleanTemps.ps1"
Write-Host "Revision y restauración de salud de Windows" -ForegroundColor "Green"
& "$scriptPath\RestoreHealth.ps1"
Write-Host "Optimización de Discos" -ForegroundColor "Green"
& "$scriptPath\TrimDiscs.ps1"

Write-Host "Finalizado" -ForegroundColor "Blue"