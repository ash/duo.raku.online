---
title: 'Solution: Quadrato e cubo'
---

{% include menu.html %}

## Codice 1

Una soluzione semplice e diretta è usare l'operatore `**`.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Trova il programma nel file [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Codice 2

Una soluzione con un po' più di stile usa gli apici Unicode.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Trova il programma nel file [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Output

Esegui il programma alcune volte e testalo con numeri diversi.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
