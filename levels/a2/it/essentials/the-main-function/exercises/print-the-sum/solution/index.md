---
title: 'Solution: Stampa la somma'
---

{% include menu.html %}

Il programma ha una sola funzione, `MAIN`. Prende due argomenti con un tipo. Tutti e due gli argomenti prendono i valori dalla linea di comando.

## Codice

Ecco la soluzione:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Trova il programma nel file [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Output

Prova numeri diversi:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Puoi anche eseguire il programma senza argomenti. Oppure puoi usare argomenti di altri tipi. Guarda cosa succede. La seconda parte del corso mostra come gestire questi casi.

{% include nav.html %}
