---
title: 'Solution: Quadrato e cubo'
---

{% include menu.html %}

## Codice 1

Una soluzione semplice usa l'operatore `**`.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Trova il programma nel file [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Codice 2

Un'altra soluzione è un po' più bella. Usa gli apici Unicode. Sono piccole cifre in alto sulla riga.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Trova il programma nel file [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Output

Esegui il programma alcune volte. Provalo con numeri diversi.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
