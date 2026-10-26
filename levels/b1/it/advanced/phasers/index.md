---
title: Phaser
---

{% include menu.html %}

Un _phaser_ è un blocco speciale. Viene eseguito automaticamente in un certo momento della vita di un programma. Non viene eseguito nel punto in cui si trova nel codice sorgente. Non chiami un phaser. Dici soltanto _quando_ il suo codice deve essere eseguito, con il nome del blocco.

I phaser più comuni segnano le fasi di tutto il programma:

* `BEGIN` viene eseguito il prima possibile, mentre Raku sta ancora compilando il programma;
* `INIT` viene eseguito una volta all'avvio del programma, prima del codice principale;
* `END` viene eseguito una volta alla fine di tutto, dopo che il codice principale è terminato.

Il prossimo programma mette questi phaser tra istruzioni normali. Nota che l'output non segue l'ordine delle righe nel file:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

Il programma stampa:

```
BEGIN
INIT
main body
END
```

`BEGIN` viene eseguito per primo, mentre il programma viene compilato. Poi, quando il programma è in esecuzione, `INIT` viene prima del corpo principale. Il corpo principale stampa subito dopo. `END` viene eseguito per ultimo, in qualunque punto del file sia scritto.

`END` si usa spesso appena prima che il programma finisca. Può stampare un riepilogo o ripulire qualcosa. `BEGIN` è utile per il lavoro che deve avvenire prima di qualsiasi altra cosa.

{% include nav.html %}
