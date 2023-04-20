$port = 3000

# Check if any process is running on port 3000
if (Test-NetConnection -ComputerName localhost -Port $port -InformationLevel Quiet) {
    Write-Host "Port $port is already in use."
} else {
	Write-Host "Port $port is not use."
    # Go to the folder containing the npm server
    cd "D:\Experiments\chatbot-ui"

    # Start the npm server in the background
    $process = Start-Process npm `
        -ArgumentList "run dev" `
        -NoNewWindow `
        -PassThru

    if ($process -ne $null) {
        Write-Host "Server started with process ID $($process.Id)."

        # Show a Windows 11 notification with the server status
        New-BurntToastNotification -Text "Server started successfully on port $port" 
    } else {
        Write-Host "Failed to start server."
    }
}

Read-Host -Prompt "Press Enter to exit"

