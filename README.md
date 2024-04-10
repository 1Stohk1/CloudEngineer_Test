# CloudEngineer_Test
The goal of this repository is to document the exercises proposed during the practical interview with Claranet.
---
The test is designed on 2 principles:
- leave freedom of expression;
- being the most adherent with the position requested.

## Timings

The project lasts one week.

### Exercise 1
Scrivi uno script bash o python che conta il numero di file script in una directory raggruppandoli in base allo shebang interpreter. 

Esempio di output: 
$ contaScript /usr/bin
81 #!/usr/bin/perl
52 #!/usr/bin/perl5.18
47 #!/bin/sh
44 #!/usr/bin/perl5.28
22 #!/usr/sbin/dtrace -s
...

### Exercise 2
Scrivi una stringa crontab che ogni domenica notte crea un backup della cartella /home/user e lo invia ad un server remoto raggiungibile tramite SSH con user@192.168.1.100 
(indica quale configurazione potrebbe essere necessaria per gestire l'autenticazione sul server remoto).

### Exercise 3
Il team di sviluppo ha rilasciato una nuova web app basata sull'ultima versione di WordPress.

Il tuo compito è creare l'infrastruttura di produzione sulla base di queste indicazioni:
1.	Usa AWS come public cloud provider
2.	Scegli Apache, Nginx o un altro webserver/servizio AWS per pubblicare il sito su internet
3.	I dati devono essere memorizzati in un database MySQL
4.	[opzionale] L'infrastruttura dev'essere sicura, tollerante ai guasti e in grado di adattarsi a variazioni di carico
5.	[opzionale] Per il provisioning dell'infrastruttura puoi usare lo strumento di IaC che conosci meglio scegliendo tra CloudFormation, Terraform e CDK
Descrivi in un file di testo tutte le componenti dell'infrastruttura e il motivo per cui hai scelto di usarle. Crea un diagramma infrastrutturale con i servizi che compongono l'infrastruttura e i collegamenti tra di essi.
