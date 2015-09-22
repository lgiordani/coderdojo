Schema tutorial

I esercizio

In questo esercizio si lavora su una singola pagina HTML già fornita e si impara come

* Aprire il browser e leggere un file locale
* Aprire l'editor, cambiare quel file e salvarlo
* Utilizzare la preview HTML fornita dall'editor
* Provare a cambiare il titolo della pagina (tag <title>) e l'intestazione (tag <h1>)
* Utilizzare il linter dell'editor per trovare gli errori
* Aggiungere un testo dato ad un paragrafo esistente
* Aggiungere un nuovo paragrafo
* Effettuare il refresh del browser

Si imparano i seguenti concetti

* Il broswer mostra il rendering di una pagina di codice
* Le pagine di Internet sono scritte in un linguaggio che si chiama HTML
* Cosa è un linguaggio di markup

Si imparano le seguenti definizioni

* Browser
* Editor
* HTML
* Rendering
* Tag
* Intestazione (header)
* Titolo (title)
* Refresh

Lavori autonomi

* Cosa accade se metto una o più parole tra i tag <b> e </b>?
* Cosa accade se metto una o più parole tra i tag <i> e </i>?
* Cosa accade se vado a capo un sacco di volte tra un paragrafo e l'altro?
* E se lo faccio dentro un paragrafo?

Tutorial

Benvenuti! Questo è il vosto primo passo nel mondo della programmazione!
Forse non è proprio il primo passo nel mondo dei computer, magari siete già dei super mega esperti e fate un sacco di cose... però sono piuttosto sicuro che oggi farete delle cose abbastanza nuove, che vi entusiasmeranno!

Quello che faremo oggi è scoprire come è fatta Internet.

TUTTA INTERNET? Ma è tantissimo! No tranquilli, ne vedremo un pezzettino solo, per cominciare a capire. Oggi, di quel grande edificio che è Internet, vedremo i mattoni e la calce. Con questi "mattoni" costruiremo qualcosa di funzionante, anche se ovviamente semplice.

E, in fondo, cosa si può costruire di più interessante di un gioco?

Un gioco in cui tutti sparano, ci si catapulta dagli aerei, si pianificano attacchi e si corre in mezzo ad esplosioni assurde? Calma. Le cose si fanno per gradi, no? Quelle che ho elencato sono tutte cose che si possono fare, ma sono un po' complesse e ci vuole tempo per impararle. Per ora inizieremo da un gioco semplice, un'avventura testuale!

Avventura testuale? Ma cosa stai dicendo? Vuoi dire che è tutto scritto e bisogna LEGGERE?

Esattamente! Attenzione, useremo anche delle immagini, non siamo poi così noiosi! Ma per questa volta mi spiace, niente esplosioni assurde.

Attention, please! Una cosa che si deve imparare pian piano facendo i programmatori è l'inglese! Ahi ahi! Ma non vi preoccupate, non serve diventare dei professori universitari, bastano un po' di parole. E quelle le impareremo pian piano.

Parte 1

Tutti sono abituati ad "andare su Internet". Ma qui siamo tra gente che vuole capire cosa succede, no? Allora noi invece che "andare su Internet", apriamo il browser: il browser ("to browse", scorrere, sfogliare) è un programma che serve per "sfogliare" Internet, per esempio oggi useremo Firefox. Ma stavolta, invece che andare su uno dei nostri siti preferiti caricheremo un sito che sta sul nostro computer. Attenzione, questo sito è accessibile solo dal vostro computer, nessuno può vederlo da un altro computer o cellulare. Più avanti faremo anche questo però.

Apriamo il browser. Nella barra dei segnalibri trovate "Esercizio 1" che abbiamo preparato per voi. Cliccatelo e vedrete questo risultato.

Immagine

Beh, questa è una pagina Web. Ok, ok, manca di colori, luci, suoni, animazioni, filmati e quant'altro. Ma è una pagina Web, e ora scopriremo cosa ci sta sotto!

Cosa usano i programmatori per fare il loro lavoro (e per divertirsi!). Usano un editor ("to edit", modificare), ovvero un programma che serve a scrivere il codice. Apriamo il nostro editor e vediamo di cosa si tratta.

Clicchiamo sull'icona Atom e lanciamo l'editor!

Immagine

Eccolo qui, il nostro migliore amico. Atom non è l'unico editor in circolazione, ce ne sono tantissimi! Ed il bello è che uno può scegliere quello che gli piace di più. Per oggi però useremo quello che abbiamo scelto noi. In futuro sarete liberi di fare come vorrete!

Da dentro Atom clicchiamo il menu File -> Open file... (oppure premiamo Ctrl+O) e scegliamo blablabla.

Urca! Cos'è questo? Una lingua aliena? Benvenuti, questo che vedete è il linguaggio HTML (che è una sigla che vuol dire HyperText Markup Language, ovvero "linguaggio a marcatori per ipertesti"). Ecco questa è proprio una lingua aliena!!! Calma, calma, una cosa alla volta.

Innanzitutto potete vedere nel codice aperto nell'editor qualcosa che vedete anche nella pagina Web? Ad esempio vedete quella riga dove dice "<h1>La mia avventura</h1>"? Facciamo così, proviamo a cambiarla e a vedere cosa succede!

Muovetevi con i tasti freccia o con il mouse sulla quella riga e modificate il testo per farlo diventare "La mia prima avventura!", compreso di punto esclamativo, mi raccomando, altrimenti non è abbastanza entusiasmante!

Adesso il testo dovrebbe essere così

<body>

  <h1>La mia prima avventura</h1>

  <h2>1</h2>

Salviamo il file, altrimenti nessuno saprà mai che abbiamo fatto questa modifica. Per salvare usiamo i tasti "Ctrl+S" (oppure il menu File -> Save). Adesso torniamo nel nostro browser e... accidenti è tutto come prima!!! Certo, niente paura. Il browser non si aggiorna automaticamente, in gergo si dice che non fa il "refresh" della pagina. Bisogna farlo manualmente, premendo il tasto F5. Ecco qui le nostre modifiche!

Ma insomma, cosa succede dentro tutto questo meccanismo? Molto semplicemente il browser apre il file che gli avete indicato, legge il codice HTML e, siccome lui sa parlare quella lingua, capisce cosa gli viene detto e lo fa. In gergo si dice che la pagina viene "renderizzata" dal browser.

Quindi qui si tratta di imparare questa lingua (l'HTML) per spiegare al browser cosa deve mostrare. Eccolo qui il segreto che non è più segreto: tutta Internet è scritta in questo linguaggio HTML! Beh, non solo, per esempio ci sono altri due linguaggi che si usano e che si chiamano CSS e JavaScript, li incontreremo più avanti. Per ora stiamo con il nostro nuovo amico HTML.

HTML è tutto fatto da degli elementi che si chiamano tag, che in italiano si traduce con "marcatore": ad esempio <h1>, lo abbiamo appena incontrato. Come vedete i tag si aprono ("<h1>") e poi si chiudono ("</h1>") e tutto cio che sta dentro è il contenuto del tag. A seconda del nome del tag succede qualcosa al contenuto. Facile, no?

Ora che avete capito come funziona il meccanismo fate questa modifica. Tornate nel file e cambiate il contenuto del tag "<h2>" da "1" a "Capitolo 1". Ricordatevi di salvare e poi andate nel browser e fate un refresh. Funziona?

Parte 2

Come tutte le lingue, anche l'HTML ha le sue regole. Se nel tema di italiano scrivete "Sonno tornato ha casa" probabilmente l'insegnante non sarà molto contento, e mi sa che a casa ci tornate veramente, ma con un brutto voto. Ecco l'HTML ha delle regole e una molto importante è che i tag aperti vanno chiusi!

Fortunatamente l'editor ci aiuta a trovare questi errori, e altrettanto fortunatamente non ci rifila brutti voti! È proprio un valido aiutante, insomma. Proviamo a vedere cosa succede se facciamo un errore. Andiamo nel nostro file e cambiamo il tag "<h1>" in "<h2>" (solo questo, lasciamo "</h1>" così com'è). Salviamo e... eccoli lì! I puntini rossi. Ahi, ahi, qui c'è qualche sbaglio. In basso nella finestra compaiono anche due minacciosi bollini rossi con scritto "error", ma tranquilli, qui non c'è la pagella.

Il primo errore dice "Tag must be paired, No start tag:[</h1>] at line 16 col 23" e se notate potete cliccare sulla parte "at line 16 col 23". Fatelo e Atom vi farà vedere esattamente dove sta l'errore. Per chi facesse più fatica con l'inglese la frase dice che "I tag devono essere accoppiati, non c'è il tag di partenza per </h1>". Eh già, infatti inizia con <h2>, ce l'abbiamo messo noi! Bene, riportiamo tutto come prima e salviamo. Se volete potete premere Ctrl+Z per annullare la modifica. Come vedete quando salvate tutto torna nella norma. Wow, per fortuna, niente bocciatura!

Ora è tempo che impariamo ad aggiungere qualcosa di nostro. Andiamo all'inizio della riga dove c'è scritto "</body>" (attenzione, dove si chiude, non dove si apre) e inseriamo qualche "a capo" per farci un po' di spazio (quanti ne volete, non costano nulla!).

Immagine

Poi su una delle righe vuote scriviamo "<p>" (ignoriamo per ora il menu che salta fuori, lo useremo tra un attimo), poi scriviamo la frase "Questo è un nuovo paragrafo" e chiudiamo il tag con "</p>". Salviamo e facciamo il refresh dal browser. Ecco il nostro nuovo paragrafo!

Certo che questa storia di salvare e fare il refresh è un po' noiosa! Siccome i programmatori sono gente pigra si inventano mille modi per non fare fatica e in questo caso hanno inventato una cosa che si chiama "Preview HTML" (cioè "anteprima dell'HTML"). Nell'editor cliccate il tasto destro del mouse e selezionate "Preview HTML" dal menu. Fantastico! Ora abbiamo un piccolo browser direttamente nell'editor, che fa automaticamente il refresh! Proviamolo subito. Inserite un nuovo paragrafo e salvate. Funziona?

Però a ben guardare anche tutta la faccenda dei tag è un po' faticosa, tutti quei simboli ">", "<" e "/" sono difficili da inserire. Chissà se l'editor ci può aiutare. Eccome! Inserite un nuovo paragrafo, ma ora invece di scrivere "<p>" scrivete solo "p". Vedete che compare un menu? Premete il tasto TAB (quello a fianco alla Q, un tasto importantissimo!) e guardate cosa succede! L'editor vi ha automaticamente inserito il tag di apertura e quello di chiusura. Fantastico, no? Si chiama autocompletamento.

Mmmm, ma qui ci sono degli "a capo", come facciamo? Non toglieteli, scrivete "Il mio terzo paragrafo" all'interno dei due tag e salvate. Dovrebbe venire una cosa così

Immagine

Cosa succede? Funziona anche se ci sono gli "a capo"? Ebbene sì, ecco un'altra regola di HTML, ovvero gli "a capo" sono completamente ignorati!
Provate ad inserire qualche "a capo" tra "terzo" e "paragrafo", salvate e vedete cosa succede.

Parte 3

Scopriamo alcuni altri tag del linguaggio HTML. Fate da soli le prove secondo le seguenti tracce. Ricordatevi di usare l'autocompletamento con il TAB!

* Cosa accade se metto una o più parole tra i tag <b> e </b>?
* Cosa accade se metto una o più parole tra i tag <i> e </i>?
* Che cosa sono i tag "<h1>", "<h2>", "<h3>"? Fino a che numero si arriva? "<h6>"? "<h7>"?

II esercizio

In questo esercizio si lavora su più pagine HTML già fornite e si fanno le seguenti attività

* Aprire più file nel browser
* Collegare un file ad un altro tramite un link (tag <a>)
* Capire la differenza tra il tasto "indietro" del browser e un link
* Fare una lista non ordinata (tag <ul>) con i suoi elementi (tag <li>)
* Inserire un'immagine (tag <img>)
* Inserire tutti i link mancanti e verificare che la storia sia tutta percorribile.

Si imparano le seguenti definizioni

* Link (anchor)
* History del browser
* Lista non ordinata (unordered list)
* Lista ordinata (ordered list)
* Immagine (image)

Lavori autonomi

* Cosa accade se metto più parole dentro il tag <a>?
* Cosa accade se metto un tag <img> dentro un tag <a>?
* Cosa accade se invece dei tag <ul> e </ul> uso i tag <ol> e </ol>?

Tutorial

Per seguire questo tutorial dobbiamo chiudere le pagine che abbiamo aperto cliccando la crocetta a lato del titolo della scheda. Poi dobbiamo aprire un progetto, ovvero un insieme di file che abbiamo già preparato per voi, giusto per evitarvi di dover passare la giornata a scrivere nell'editor!

Una volta chiusi tutti i file selezionate Packages -> Project Manager -> List Projects e nel menu che si apre selezionate "blablabla". Vedrete comparire a sinistra una serie file che useremo.

Parte 1

Nel primo esercizio abbiamo incontrato l'HTML, il "linguaggio a marcatori per gli ipertesti". Urca, urca, attenzione. Beh, "linguaggio" abbiamo capito cosa significa, in pratica è un insieme astruso di parole e simboli che fanno fare qualcosa al computer. I marcatori sono proprio gli elementi del linguaggio, quei nomi strani circondati dalle parentesi appuntite. Ma questi ipertesti? Niente di complesso, li usiamo tutti i giorni. Gli ipertesti sono dei testi collegati tra loro. Avete presente quando cliccate un link su Internet? Link per l'appunto significa collegamento ed ecco fatto! Tutta Internet è un gigantesco ipertesto.

Ma come si fanno i link? Facciamone subito uno, così impariamo in quattro e quattr'otto. Apriamo il file "01.html". Come vedete è molto simile al file su cui abbiamo lavorato nel primo esercizio, solo che qui c'è un po' più di testo. Leggetelo pure, così cominciamo ad immedesimarci nel gioco. Vorremmo che alla fine di questo testo il giocatore possa muoversi verso un'altra pagina, facendo procedere la storia.

Quest'altra parte della storia è nel file "02.html". Per collegare i due file aggiungiamo alla fine del file "01.html" (attenzione, prima del tag "</body>") il seguente codice

<a href="02.html">Vai avanti</a>

Ricordatevi che esiste l'autocompletamento con TAB, scrivete "a" e via!

Cosa succede nell'anteprima? È spuntato fuori un link, e quando lo cliccate... zac! Eccoci alla pagina "02.html"! Mmmmm, ne siamo sicuri? Beh, apriamo il file "02.html" cliccando sul suo nome nella colonna a sinistra e guardiamoci dentro. Mi sembra proprio lui, no?

Accidenti, c'è un problema! Come facciamo a tornare alla pagina 1? La pagina 2 non contiene alcun link, ci siamo persi nella foresta di Internet!

Ma noi sappiamo come fare un link, quindi inseriamo nella pagina 2 un link alla pagina 1, esattamente come abbiamo fatto prima. Attenzione ad inserire il link prima del tag di chiusura di body.

Come vedete l'anteprima non funziona perfettamente, e in effetti per utilizzare i link e controllare che tutto sia giusto vale la pena di usare il browser. Comunque, nella pagina del codice di "02.html" cliccate con il tasto destro e scegliete "Preview HTML" si aprirà un'altra anteprima con il nuovo link in bella vista.

Ottimo, ora possiamo andare avanti e indietro tra le nostre due pagine!

Mettiamo che una pagina debba avere più di un link, è possibile metterne due, ad esempio? Prova a mettere nella pagina 1 un link alla pagina "03.html", e metti il testo "Vai in fondo". Cosa succede? È possibile mettere su due righe?

Come avete visto anche se mettete i tag "<a>" su righe diverse l'HTML se ne infischia e li mette uno dietro l'altro! Le uniche cose che stanno su due righe diverse in HTML sono i paragrafi. Quindi forse è possibile mettere un link dentro un paragrafo? È possibile mettere un tag dentro l'altro? Proviamo e vediamo cosa succede!

Possiamo provare a fare così

<p><a href="02.html">Vai avanti</a></p>
<p><a href="03.html">Vai in fondo</a></p>

Eccoli! I link adesso sono su due righe diverse, perfetto!

Parte 2

Una cosa molto comoda da avere quando si scrivono i testi sono le liste e nel Web ci sono liste ovunque, anche se spesso non ce ne accorgiamo. Ad esempio i menu delle pagine come Facebook o Google, i pulsanti in alto, tutte le mail che ci sono nella casella di posta... tutte liste!

Cominciamo a vedere una semplice lista. Il tag HTML che useremo è "<ul>", dentro il quale metteremo dei tag "<li>". Per esempio

<ul>
  <li>Elemento 1</li>
  <li>Elemento 2</li>
</ul>

Potete metterlo nella pagina che preferite, ricordatevi di salvarla. Come vedete la lista produce un cosiddetto "elenco puntato", infatti "ul" sta per "unordered list" (lista non ordinata), chiamata così perché gli elementi non hanno un ordine particolare. Cosa succede se utilizziamo il tag "<ol>" invece di "<ul>"?

Ora provate ad aprire il file "01.html" e a mettere i due link creati precedentemente in una lista. Come si fa? Funziona?

Sarebbe ora di rendere la cosa un po' più accattivante graficamente, non vi pare? Aggiungiamo un'immagine! Ne abbiamo preparata una bellissima che si trova nella cartella "images" del progetto. Atom permette anche di vedere le immagini, quindi se la cliccate potete ammirarla subito.

Per inserirla nalla pagina Web usiamo il tag "<img>". Questo è un tag un po' particolare. Vi abbiamo detto prima che tutti i tag HTML vanno aperti e chiusi per poterci mettere dentro un contenuto. Beh ecco, non era proprio tutta tutta la verità.

Il tag "<img>" va aperto e chiuso come tutti, ma non ci si mette dentro nulla come contenuto! Il file che contiene l'immagine si mette in quello che si chiama attributo, in particolare l'attributo "src". Mettiamo il seguente codice nella pagina 1 sotto il tag "<h1>"

<img src="../images/adventure.jpg" />

Bene, quello che inizia con "src=" è l'attributo "src" che sta per source, sorgente, ovvero da dove prendere l'immagine. Gli attributi sono come delle caratteristiche aggiuntive dei tag e sono importantissimi! Ma questo tag "<img>" ha un'altra particolarità: invece di terminare con ">" termina con "/>". Questo perché è un tag vuoto, ovvero andrebbe scritto così

<img src="../images/adventure.jpg"></img>

ma l'HTML ci permette di accorciare la scrittura. Un po' come scrivere "ecc." invece di "eccetera".

blablabla Togliere i due punti da qui!

III esercizio

In questo esercizio si lavora su più pagine HTML già fornite e se ne aggiungono di nuove. Si fanno le seguenti attività

* Creare e salvare un nuovo file nell'editor
* Copiare e incollare del codice HTML

Tutorial

Ora finalmente costruiremo il nostro gioco! Un'avventura testuale si compone di diverse pagine collegate tra loro tramite scelte che il giocatore può fare. A seconda delle scelte la storia può procedere in un modo o in un altro, finire bene o finire male!

Noi abbiamo preparato alcuni file per farvi iniziare a lavorare, ma oggi costruirete voi la vostra avventura!

Per prima cosa decidete che ambientazione preferite. Ne abbiamo preparate tre: spionaggio (qualcosa tipo 007 o Jason Bourne), fantascienza (avventure tra alieni nello spazio, occhio che mordono!) e fantasy (mai visto "Il Signore degli Anelli"?). Speriamo che una di queste vi piaccia!

Una volta che avete deciso su cosa lavorare aprite il progetto relativo. Per prima cosa chiudete le finestre su cui abbiamo lavorato finora e blablabla. Trovate il progetto che vi interessa dentro la cartella blablabla/nome dove nome è "spy" (spionaggio), "scifi" (fantascienza) o "fantasy" a seconda di quello che avete scelto.

Dentro il progetto trovate già 6 file HTML numerati dallo 01 allo 06 e una cartella di immagini chiamata "images". Alcune di queste immagini sono già usate nei file che vi abbiamo fornito, altre sono a disposizione. Ma anche quelle già usate si possono riutilizzare!

Guarda lo schema qui sotto, è il modo in cui devono essere connesse le pagine che ti abbiamo fornito, quindi il primo compito è quello di aprire i file e inserire i link giusti secondo lo schema. Nel browser trovi un segnalibro blablabla alla prima pagina. Una volta inseriti tutti i link verifica che sia tutto a posto e che l'avventura sia percorribile.

Avrai notato che la stanza numero 6 riporta la scritta "Inizia l'avventura!". Qui tocca a te, aggiungi le pagine che vuoi, usando alcune delle immagini che ti abbiamo fornito. Inventati tu la storia, ma controlla che sia tutta percorribile e che i link funzionino tutti!

IV esercizio se c'è tempo... CSS!
