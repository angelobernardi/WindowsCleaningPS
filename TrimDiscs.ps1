ForEach($f in [System.IO.DriveInfo]::GetDrives()){
    $drive = $f.RootDirectory.ToString().Replace(":\","")
    Optimize-Volume -DriveLetter $drive -ReTrim -Verbose
}