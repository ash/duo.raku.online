---
title: Note sull'uso di Unicode
---

{% include menu.html %}

Raku si aspetta tutti i file del tuo programma in UTF-8. Che cosa significa in pratica? Non devi preoccuparti dei caratteri fuori da ASCII. Per esempio, puoi metterli nelle stringhe. Ma non è tutto. Il tuo programma può anche leggere un file di testo UTF-8. Molto probabilmente, non devi preoccuparti nemmeno di questo. Inoltre, Raku calcola bene la lunghezza di una stringa. Conta i caratteri, non i byte. Ne parliamo in dettaglio più avanti.

Ecco la prossima cosa da sapere. I nomi nel tuo programma possono avere lettere non latine o non inglesi. Se vuoi, puoi chiamare una variabile `$ι` invece di `$i`. Il compilatore la legge correttamente.

Raku sta molto attento alle proprietà Unicode dei caratteri. Per esempio, sa quali caratteri sono lettere o cifre. Sa anche quali caratteri formano coppie. Le parentesi tonde e le altre parentesi sono coppie. Spesso parti diverse del programma possono usare parentesi diverse. Per esempio, il nostro programma ‘Hello, World!’ può usare queste virgolette non latine. Le vedrai di nuovo più avanti, nelle grammatiche Raku:

```raku
say ｢Hello, World!｣;
```

Alcuni operatori integrati hanno due forme. Una forma usa Unicode e l'altra usa solo ASCII. Per esempio, puoi scrivere ‘non uguale’ come `!=` o come `≠`. Lo stesso vale per le operazioni sugli insiemi. Un esempio è `∈`. La sua forma ASCII è `(elem)`. C'è anche una costante integrata. Puoi scriverla come `pi` o come `π`.

Con i numeri, puoi scrivere le frazioni come `½` invece di `0.5`. Puoi anche calcolare il quadrato di `$x` come `$x²`. Questo usa un carattere apice. È piccolo e scritto in alto.

Ecco l'elenco completo di queste coppie: 📖 [Simboli Unicode e ASCII](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
