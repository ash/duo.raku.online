---
title: 'Solution: Commandoregelargumenten printen'
---

{% include menu.html %}

Het programma krijgt de argumenten van de commandoregel. Ze staan in de array `@*ARGS`. Dus hebben we een lus over de elementen nodig.

## Code

```raku
.say for @*ARGS;
```

🦋 Vind het programma in het bestand [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Uitvoer

Voer het programma uit. Kijk of het de argumenten afdrukt, één op elke regel:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
