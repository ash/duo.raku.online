---
title: 'Solution: Stampa degli argomenti della riga di comando'
---

{% include menu.html %}

Il programma riceve gli argomenti dalla riga di comando. Sono nell'array `@*ARGS`. Così ci serve un ciclo sui suoi elementi.

## Codice

```raku
.say for @*ARGS;
```

🦋 Trova il programma nel file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Output

Esegui il programma. Controlla che stampi gli argomenti, uno per riga:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
