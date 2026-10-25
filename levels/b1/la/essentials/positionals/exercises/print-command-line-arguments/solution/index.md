---
title: 'Solutio: Print argumentorum lineae mandati'
---

{% include menu.html %}

Programma argumenta lineae mandati in serie `@*ARGS` accipit. Itaque per elementa huius seriei iterare debemus.

## Codex

```raku
.say for @*ARGS;
```

🦋 Inveni codicem fontem in archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Exitus

Curre programma et proba id quodque argumentum in sua linea imprimere:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
