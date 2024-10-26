@echo off
:: Controllo permessi di amministratore
openfiles >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Esegui lo script come amministratore !
    pause
    exit /b
)

:: Colore verde
color 0A

echo SCRIPT CREATED BY HIGHMARK - https://highmark.it

:: Controllo della connessione a Internet
echo Controllo della connessione a Internet...
ping -n 1 www.google.com >nul 2>&1
if %errorlevel% NEQ 0 (
    echo Nessuna connessione a Internet. Continuo comunque (alcune funzioni potrebbero non funzionare correttamente) ...
)

:: Log dell'operazione
set LOGFILE=%USERPROFILE%\Desktop\log_ottimizzazione.txt
echo Inizio ottimizzazione: %date% %time% > %LOGFILE%

echo *** Pulizia dei file anomali di sistema ***
echo Cancellazione dei file nella cartella Prefetch...
del /s /q /f "%SYSTEMROOT%\prefetch\*" >> %LOGFILE% 2>&1
echo Cancellazione dei file nella cartella Temp di sistema...
del /s /q /f "%SYSTEMROOT%\temp\*" >> %LOGFILE% 2>&1
echo Cancellazione dei file temporanei dell'utente...
del /s /q /f "%USERPROFILE%\AppData\Local\Temp\*" >> %LOGFILE% 2>&1

echo *** Pulizia aggiuntiva ***
echo Cancellazione della cache DNS...
ipconfig /flushdns >> %LOGFILE% 2>&1
echo Cancellazione dei file di log di Windows...
del /s /q /f "%SYSTEMROOT%\System32\LogFiles\*" >> %LOGFILE% 2>&1

echo *** Pulizia dei file temporanei di Windows ***
echo *** Warn : NON CHIUDERE LA FINESTRA DI PULIZIA DISCO DI WINDOWS !***
echo Avvio della pulizia disco...
cleanmgr /sagerun:1 >> %LOGFILE% 2>&1

echo *** Controllo di problemi nel sistema ***
echo Avvio del Controllo file di sistema (SFC). Questo potrebbe richiedere alcuni minuti...
sfc /scannow >> %LOGFILE% 2>&1

echo *** Deframmentazione e Ottimizzazione del disco ***
defrag C: /O >> %LOGFILE% 2>&1

echo *** Controllo della versione di Windows ***
echo Controllo della versione di Windows installata...
ver >> %LOGFILE% 2>&1

echo Script completato. Si consiglia di riavviare il computer per ripartire con il pc pulito :)
echo Log salvato in %LOGFILE%.
echo Vuoi riavviare il computer ora? (S/N)
choice /c SN
if %errorlevel%==1 (
    shutdown /r /t 0
) else (
    echo Riavvio annullato.
)

pause
exit
