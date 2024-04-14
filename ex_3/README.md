# Create a Web Host based on WordPress FE
<div 
   <p align="right";
      position="absolute";
      vertical-align= "middle"; >
     <img src="https://th.bing.com/th/id/R.bee4ebb7f8c7dc93de823ae3e04a249e?rik=QAB1%2bVSa9qn1vQ&pid=ImgRaw&r=0" alt="WordPress" width="20%"/>
   </p>
   <p align="left";
      position="absolute";
      vertical-align= "middle"; >
     <img src="https://logodix.com/logo/1638898.png" alt="NGINX" width="20%"/>
   </p>
</div>

Bisogna utilizzare NGINX per la sua alta efficienza nel gestire diverse connessioni sincrone sulla macchina, optando che il cliente che sta aprendo il sito web sia una società in crescita.
NGINX nasce proprio dalle incapacità di Apache nel gestire il problema dei C10k che nel '99 affligeva i server. Oggi giorno se vi sono ancora numeri da parte di Apache, è dovuto anche dal fatto che esso è presente di default nella maggior parte dei sistemi operativi, una sorta di Internet Explorer dei web server, come sappiamo invecchiano male queste tipologie di software/soluzioni.

Invece per quanto riguarda NGINX se configurato bene, con un Elastic Load Balancer per gestire le richieste in ingresso nel TCP/IP livello 4 (Rete), esso riesce a rendere più efficienti le richieste nel livello 7 (Applicazione), TODO: leggere come effettua questa gestione efficiente.

Si va a creare una rete VPC (Virtual Private Cloud) che copre più zone di disponibilità per poter ridondare le varie subnets con tutti i loro componenti in vari territori, l'infrastruttura sarà così in grado di sopravvivere a disastri ambientali, quindi andremo ad inserirci un Internet Gateway che sarà il nostro porto di comunicazione con l'internet, dopo di che andiamo a creare un NAT Gateway per evitare traffico in ingresso indesiderato. Queste due saranno connesse tra di loro alla NAT andiamo a connettere l'instanza EC2 (che quindi verrà creata in una Subnet Privata) dove sarà presente il web server in ascolto con il relativo sito web customizzabile tramite la pagina amministratore di WordPress. Questa pipeline deve essere registrata all'interno di un servizio di terraformazione come AWS CloudFormation. In questo modo andremo a crearci un gruppo autoscalante, in grado di gestire le richieste in ingresso attraverso tecniche di ML che possono prevedere i momenti di picco e i momenti nelle quali le istanze non sono necessarie, andando così a diminuire lo spreco di risorse ed il costo dell'infrastruttura. Se vi sono necessità di rendere disponibile il servizio in aree molto distanti si può utilizzare la Route53 di AWS per inserire VPC più vicini ai clienti, l'analisi delle richieste può essere fatta dalla home page dell'amministratore dell'account o da chi ha ricevuto i permessi da questi (si usa la best practice dei permessi minimi).

