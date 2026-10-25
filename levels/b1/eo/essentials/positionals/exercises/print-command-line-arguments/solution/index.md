---
title: 'Solvo: Presi komando-linio argumentojn'
---

{% include menu.html %}

La programo ricevas la argumentojn de la komanda linio en la tabelo `@*ARGS`. Do ni devas iri per buklo tra la elementoj de ĉi tiu tabelo.

## Kodo

```raku
.say for @*ARGS;
```

🦋 Trovu la programon en la dosiero [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Eligo

Rulu la programon kaj kontrolu, ke ĝi presas ĉiun argumenton en sia propra linio:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
