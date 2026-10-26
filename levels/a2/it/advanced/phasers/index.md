---
title: Phaser
---

{% include menu.html %}

Un _phaser_ è un blocco speciale. Parte da solo in un certo momento della vita di un programma. Non parte nel punto dove sta nel codice. Non chiami un phaser. Dici solo _quando_ il suo codice deve partire. Lo dice il nome del blocco.

I phaser più comuni riguardano le fasi di tutto il programma:

* `BEGIN` parte il prima possibile. In quel momento Raku compila ancora il programma.
* `INIT` parte una volta, all'inizio del programma. Parte prima del codice principale.
* `END` parte una volta, proprio alla fine. Parte quando il codice principale è finito.

Questo programma ha questi phaser tra istruzioni normali. Guarda l'output. Non segue l'ordine delle righe nel file:

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

`BEGIN` parte per primo, durante la compilazione. Poi parte il programma. `INIT` parte prima del corpo principale. Dopo, il corpo principale stampa la sua riga. `END` parte per ultimo. Il suo posto nel file non conta.

Spesso le persone usano `END` per stampare un riepilogo. Lo usano anche per ripulire qualcosa. Questo succede subito prima della fine del programma. `BEGIN` è utile per il lavoro da fare prima di tutto il resto.

{% include nav.html %}
