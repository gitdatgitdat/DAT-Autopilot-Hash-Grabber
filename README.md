---
## DAT-Autopilot-Hash-Grabber

Quickly collect Windows Autopilot registration (hardware hash) information from new or freshly imaged devices while at the Windows OOBE (Out-of-Box Experience) screen. 
It wraps the official Microsoft `Get-WindowsAutoPilotInfo.ps1` script with a simpler wrapper for field use.

---
## Usage Instructions

1. Boot the target device to the Windows Setup (OOBE) screen.
2. Press `Shift + F10` to open a Command Prompt window.
3. Enter `powershell` to switch to PowerShell.
4. Temporarily allow scripts to run:
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process

5. Navigate to the thumb drive (I used D:):
cd D:\

6. Run the collection script:
.\Get-AutopilotInfo.ps1

7. Once complete, the hardware information will be saved as AutoPilotInfo.csv on the thumb drive.
8. Revert the script execution policy to the default:
Set-ExecutionPolicy -ExecutionPolicy Restricted -Scope Process

---
## Files

Get-AutopilotInfo.ps1
Wrapper script that calls the Microsoft collector with an output path.

Get-WindowsAutoPilotInfo.ps1
Microsoft-provided script that gathers the hardware hash data.

Instructions.txt
Quick reference field guide for running the script at OOBE.

---
