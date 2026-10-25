---
title: 'Solution: Commandoregelargumenten printen'
---

{% include menu.html %}

Het programma krijgt de argumenten van de commandoregel in de array `@*ARGS`. Dus hebben we een lus over de elementen van deze array nodig.

## Code

```raku
.say for @*ARGS;
```

🦋 Vind het programma in het bestand [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Uitvoer

Voer het programma uit en controleer of het elk argument op een eigen regel afdrukt:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
