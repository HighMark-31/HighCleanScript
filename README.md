# 🚀 HighClean.bat - Ottimizzazione Avanzata del Sistema Windows

**HighClean.bat** è uno script batch creato da [Highmark](https://highmark.it) per ottimizzare Windows in modo rapido e sicuro. Questo script rimuove file temporanei, libera la cache, controlla l'integrità del sistema e ottimizza il disco, lasciando il tuo PC più veloce e pulito. Al termine, hai anche la possibilità di riavviare il computer per applicare completamente le modifiche.

## ⚙️ Funzionalità Principali

1. **🔄 Pulizia dei File Temporanei**  
   - Rimuove file nella cartella `Prefetch`, file `Temp` di sistema e file temporanei dell'utente.

2. **🧹 Pulizia Aggiuntiva**  
   - Cancella la cache DNS e i file di log di sistema.

3. **💾 Pulizia Disco di Windows**  
   - Avvia la pulizia disco integrata di Windows (richiede la finestra aperta).

4. **🛠️ Controllo di Integrità del Sistema**  
   - Esegue `sfc /scannow` per rilevare e risolvere eventuali problemi con i file di sistema.

5. **💽 Deframmentazione e Ottimizzazione del Disco**  
   - Avvia la deframmentazione e ottimizzazione della partizione C:.

6. **📊 Verifica della Versione di Windows**  

7. **🔄 Riavvio Opzionale**  
   - Alla fine, scegli se riavviare il sistema per applicare tutte le ottimizzazioni.

## 📋 Prerequisiti

- **🔑 Permessi di Amministratore**: Lo script richiede i permessi di amministratore per eseguire tutte le funzionalità.

## 🖱️ Come Utilizzare HighClean.bat

1. Scarica lo script `HighClean.bat`.
2. Eseguilo come **Amministratore**.
3. Segui le istruzioni e lascia che lo script completi tutte le operazioni di pulizia e ottimizzazione.
4. Al termine, scegli se riavviare il sistema per rendere effettive tutte le modifiche.

> **Nota**: alcune funzionalità potrebbero non funzionare correttamente senza una connessione a Internet.

## 📝 Log delle Operazioni

Un log di tutte le attività svolte viene salvato automaticamente in un file chiamato `log_ottimizzazione.txt` sul Desktop.

## ⚠️ Disclaimer

- **Utilizzo Responsabile**: HighClean.bat è pensato per essere utilizzato su sistemi Windows da utenti esperti o amministratori. Prima di eseguire, assicurati di aver salvato tutto il lavoro aperto.
- **Possibile Perdita di Dati Temporanei**: Questo script elimina file temporanei e dati di sistema; verifica di non aver bisogno di alcun file temporaneo prima di eseguirlo.
- **Esecuzione su Rischio dell'Utente**: Anche se progettato con cura, questo script modifica componenti di sistema e può causare cambiamenti permanenti.
