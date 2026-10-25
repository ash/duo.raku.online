---
title: 'Solution: Stampa la somma'
---

{% include menu.html %}

Il programma ha solo una funzione `MAIN`. Prende due argomenti tipizzati. Entrambi sono costruiti dagli argomenti della linea di comando.

## Codice

Ecco la soluzione:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Trova il programma nel file [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Output

Prova numeri di input diversi:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Puoi anche eseguire il programma senza argomenti, o con argomenti di altri tipi. Guarda cosa succede allora. Parleremo di come gestire questi casi nella seconda parte del corso.

{% include nav.html %}
