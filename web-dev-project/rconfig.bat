@echo off
set SCRIPT_DIR=%~dp0
start /B cmd /C "cd %SCRIPT_DIR%\frontend && npm start -- --port 3000"
call :wait
cd %SCRIPT_DIR%\backend && python manage.py migrate
start /B cmd /C "cd %SCRIPT_DIR%\backend && python manage.py runserver"
call :wait
goto :eof

:wait
ping -n 2 127.0.0.1 > nul
goto :eof
