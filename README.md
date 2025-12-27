# WindowsCleaningPS
Powershell Scripts for cleaning and maintaining Windows Clean

## Scripts

### CleanTemps.ps1

This script performs several cleaning operations to free up disk space.

**Operations:**

*   Empties the Recycle Bin.
*   Deletes files from the user's temporary folder (`%TEMP%`).
*   Deletes files from the Windows temporary folder (`C:\Windows\Temp`).
*   Deletes files from the Prefetch folder.
*   Runs the Disk Cleanup utility (`cleanmgr.exe`) to perform a comprehensive cleanup.

### RestoreHealth.ps1

This script uses built-in Windows tools to scan for and repair corrupted system files.

**Commands:**

*   `DISM.exe /Online /Cleanup-image /Scanhealth`: Scans the Windows component store for corruption.
*   `DISM.exe /Online /Cleanup-image /Restorehealth`: Repairs any corruption found in the component store.
*   `DISM.exe /Online /Cleanup-image /Startcomponentcleanup`: Cleans up and compresses the component store.
*   `sfc /scannow`: Scans all protected system files and replaces corrupted files.

### TrimDiscs.ps1

This script optimizes solid-state drives (SSDs) by running the `Optimize-Volume` command with the `-ReTrim` parameter on all mounted drives. This helps maintain SSD performance.

### Full.ps1

This is a master script that runs the other maintenance scripts in a specific order.

**Execution Flow:**

1.  `CleanTemps.ps1`
2.  `RestoreHealth.ps1`
3.  `TrimDiscs.ps1`
