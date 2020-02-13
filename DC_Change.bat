:: Diese Batch ändert den Hauptdomänencontroller
ECHO OFF
:: DomainController ändern
nltest /SC_RESET:caritas.local\DOM01
