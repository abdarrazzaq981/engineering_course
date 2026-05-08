@echo off
cd /d "%~dp0"
set PORT=8888
echo LLM Engineering Course - Jupyter Lab -^> http://localhost:%PORT%
where jupyter >nul 2>nul
if errorlevel 1 (
  echo Jupyter not found. Install via: pip install jupyterlab
  exit /b 1
)
jupyter lab --port %PORT%
