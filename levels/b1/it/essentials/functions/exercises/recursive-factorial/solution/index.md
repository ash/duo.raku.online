---
title: 'Solution: Fattoriale ricorsivo'
---

{% include menu.html %}

Il fattoriale è un esercizio molto utile, perché ci sono molti modi per risolverlo. Questa volta usiamo la ricorsione, il che significa che la funzione chiama se stessa.

## Codice 1

Ecco il codice della soluzione. Nota che devi controllare una condizione per fermare la ricorsione. Altrimenti, andrà avanti all'infinito.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Trova il programma nel file [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Codice 2

In codice come questo, la forma postfissa di `if` è spesso migliore. Ti permette di uscire subito dalla funzione. Questo rende il codice più pulito e toglie molta indentazione e punteggiatura.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Trova il programma aggiornato nel file [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Esempio

Esegui il programma e controlla il risultato. A proposito, sapevi che sei settimane hanno esattamente _10!_ secondi?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
