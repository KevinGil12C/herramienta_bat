@echo off
chcp 65001 > nul
title Herramientas Rápidas de Diagnóstico
color 0A

:menu
cls
echo ========================================
echo    HERRAMIENTAS RAPIDAS DE DIAGNOSTICO
echo ========================================
echo.
echo 1.  Informacion de Red (ipconfig)
echo 2.  Prueba de Conexion (ping)
echo 3.  Conexiones de Red (netstat)
echo 4.  Verificador de Archivos (sfc)
echo 5.  Verificador de Disco (chkdsk)
echo 6.  Gestion de Procesos
echo 7.  Informacion del Sistema
echo 8.  Opciones de Apagado
echo 9.  Diagnostico DNS (nslookup)
echo 10. Recursos de Red (net use)
echo 11. TODAS las herramientas (rapido)
echo 12. Salir
echo.
set /p opcion="Seleccione opcion (1-12): "

if "%opcion%"=="1" goto ipconfig_fast
if "%opcion%"=="2" goto ping_fast
if "%opcion%"=="3" goto netstat_fast
if "%opcion%"=="4" goto sfc_fast
if "%opcion%"=="5" goto chkdsk_fast
if "%opcion%"=="6" goto procesos_fast
if "%opcion%"=="7" goto systeminfo_fast
if "%opcion%"=="8" goto shutdown_fast
if "%opcion%"=="9" goto nslookup_fast
if "%opcion%"=="10" goto netuse_fast
if "%opcion%"=="11" goto todas_fast
if "%opcion%"=="12" exit
goto menu

:ipconfig_fast
cls
echo ========== IPCONFIG /all ==========
ipconfig /all
echo.
pause
goto menu

:ping_fast
cls
echo ========== PING ==========
set /p target="Ingrese IP o dominio (ENTER para google.com): "
if "%target%"=="" set target=google.com
ping %target% -n 4
echo.
pause
goto menu

:netstat_fast
cls
echo ========== NETSTAT -an ==========
netstat -an
echo.
pause
goto menu

:sfc_fast
cls
echo ========== SFC /SCANNOW ==========
echo Ejecutando... Esto puede tomar varios minutos.
sfc /scannow
echo.
pause
goto menu

:chkdsk_fast
cls
echo ========== CHKDSK ==========
echo Analizando disco C:...
chkdsk C: /scan
echo.
pause
goto menu

:procesos_fast
cls
echo ========== GESTION PROCESOS ==========
echo 1. Ver procesos
echo 2. Terminar proceso por PID
echo 3. Volver
echo.
set /p proc="Opcion: "
if "%proc%"=="1" (
    cls
    tasklist
    pause
)
if "%proc%"=="2" (
    cls
    tasklist
    echo.
    set /p pid="PID a terminar: "
    if not "%pid%"=="" taskkill /PID %pid% /F
    pause
)
goto menu

:systeminfo_fast
cls
echo ========== SYSTEMINFO ==========
systeminfo | more
echo.
pause
goto menu

:shutdown_fast
cls
echo ========== APAGADO/REINICIO ==========
echo 1. Apagar ahora
echo 2. Reiniciar ahora
echo 3. Apagar en 1 minuto
echo 4. Cancelar apagado
echo 5. Volver
echo.
set /p shut="Opcion: "
if "%shut%"=="1" shutdown /s /t 0
if "%shut%"=="2" shutdown /r /t 0
if "%shut%"=="3" shutdown /s /t 60
if "%shut%"=="4" shutdown /a
goto menu

:nslookup_fast
cls
echo ========== NSLOOKUP ==========
set /p dns="Dominio a consultar (ENTER para google.com): "
if "%dns%"=="" set dns=google.com
nslookup %dns%
echo.
pause
goto menu

:netuse_fast
cls
echo ========== NET USE ==========
echo 1. Ver conexiones
echo 2. Conectar unidad
echo 3. Desconectar unidad
echo 4. Volver
echo.
set /p net="Opcion: "
if "%net%"=="1" (
    net use
    pause
)
if "%net%"=="2" (
    set /p unidad="Letra de unidad (ej: Z:): "
    set /p ruta="Ruta (ej: \\server\share): "
    if not "%unidad%"=="" if not "%ruta%"=="" net use %unidad% %ruta%
    pause
)
if "%net%"=="3" (
    set /p unidad="Letra a desconectar (ej: Z:): "
    if not "%unidad%"=="" net use %unidad% /delete
    pause
)
goto menu

:todas_fast
cls
echo Ejecutando herramientas basicas rapidas...
echo.
echo --- IPCONFIG ---
ipconfig | findstr /i "ipv4 gateway"
echo.
echo --- PING ---
ping google.com -n 2 | findstr "TTL Perdidos"
echo.
echo --- NETSTAT (resumen) ---
netstat -an | find /c "ESTABLISHED"
echo Conexiones establecidas.
echo.
echo --- PROCESOS (top 5) ---
tasklist | more +7 | head -5
echo.
echo --- SYSTEMINFO (basico) ---
systeminfo | findstr /i "nombre sistema memoria"
echo.
pause
goto menu