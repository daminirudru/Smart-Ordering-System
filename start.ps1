# Smart Ordering System Startup Script

Write-Host "🚀 Starting Smart Ordering System..." -ForegroundColor Green

# Kill any existing node processes
Write-Host "Stopping existing processes..." -ForegroundColor Yellow
Get-Process | Where-Object {$_.ProcessName -like "*node*"} | Stop-Process -Force -ErrorAction SilentlyContinue

# Start backend server
Write-Host "Starting backend server..." -ForegroundColor Blue
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'C:\Users\DAMINIRUDRU\OneDrive\Desktop\Smart ordering\backend'; npm start"

# Wait a moment for backend to start
Start-Sleep -Seconds 3

# Start frontend server
Write-Host "Starting frontend server..." -ForegroundColor Blue
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd 'C:\Users\DAMINIRUDRU\OneDrive\Desktop\Smart ordering\frontend'; npm start"

Write-Host "✅ Both servers are starting..." -ForegroundColor Green
Write-Host "📱 Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "🔧 Backend: http://localhost:5000" -ForegroundColor Cyan
Write-Host "Press any key to continue..."
Read-Host