---
title: 'Solution: Stampa degli argomenti della riga di comando'
---

{% include menu.html %}

Il programma riceve gli argomenti della riga di comando nell'array `@*ARGS`. Quindi dobbiamo fare un ciclo sugli elementi di questo array.

## Codice

```raku
.say for @*ARGS;
```

🦋 Trova il programma nel file [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Output

Esegui il programma e controlla che stampi ogni argomento su una riga a parte:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
