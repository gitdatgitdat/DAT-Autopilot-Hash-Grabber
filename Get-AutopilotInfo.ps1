# Define the path to the Get-WindowsAutoPilotInfo script
$scriptPath = "D:\Get-WindowsAutoPilotInfo.ps1"

# Define the output file path
$outputPath = "D:\AutoPilotInfo.csv"

# Run the Get-WindowsAutoPilotInfo script with the specified output path
PowerShell -ExecutionPolicy Bypass -File $scriptPath -OutputFile $outputPath -Append

# Display a message when done
Write-Host "AutoPilot information has been retrieved"