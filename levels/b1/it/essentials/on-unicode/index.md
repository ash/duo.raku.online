---
title: Note sull'uso di Unicode
---

{% include menu.html %}

Raku presume che tutti i file del tuo programma siano salvati in UTF-8. In pratica, non devi preoccuparti dei caratteri non ASCII. Per esempio, puoi usarli nei letterali di stringa. Ma non è tutto. Molto probabilmente, anche leggere un file di testo UTF-8 non è un problema. Significa anche che Raku calcola bene la lunghezza di una stringa. Conta i caratteri, non i byte. Ne parleremo più in dettaglio in seguito.

Ecco la prossima cosa che dovresti sapere. Gli identificatori, o nomi, possono avere lettere non latine o non inglesi. Se vuoi, puoi chiamare la tua variabile `$ι` invece di `$i`. Il compilatore la leggerà correttamente.

Raku è piuttosto rigoroso con le proprietà Unicode dei caratteri. Per esempio, sa se un carattere è una lettera o una cifra. Sa anche quali caratteri formano coppie, come le parentesi tonde e gli altri tipi di parentesi. Spesso parti diverse del programma possono usare tipi diversi di parentesi. Per esempio, cambiamo il nostro programma ‘Hello, World!’. Nel programma possiamo usare queste virgolette non latine. Le vedrai di nuovo quando lavoreremo con le grammatiche Raku:

```raku
say ｢Hello, World!｣;
```

Alcuni operatori integrati hanno due forme: Unicode e ASCII. Per esempio, puoi digitare ‘non uguale’ come `!=` o come `≠`. Lo stesso vale per le operazioni sugli insiemi. Per esempio, `∈` ha una versione solo ASCII, `(elem)`. Inoltre, puoi indicare una costante integrata come `pi` o `π`.

Con i numeri, puoi usare frazioni come `½` invece di `0.5`. Puoi anche ottenere il quadrato di `$x` con un carattere apice: `$x²`.

Vedi l'elenco completo di queste coppie nella documentazione: 📖 [Simboli Unicode contro ASCII](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
