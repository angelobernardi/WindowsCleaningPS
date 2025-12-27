Write-Host "Iniciando proceso de limpieza"  -ForegroundColor "Blue"
$curpath = (get-location).path
cd c:\CleanPS\

Write-Host "Limpieza de Papelera y Temporales"  -ForegroundColor "Green"
.\CleanTemps.ps1
Write-Host "Revision y restauración de salud de Windows"  -ForegroundColor "Green"
.\RestoreHealth.ps1
Write-Host "Optimización de Discos"  -ForegroundColor "Green"
.\TrimDiscs.ps1
cd $curpath
Write-Host "Finalizado"  -ForegroundColor "Blue"