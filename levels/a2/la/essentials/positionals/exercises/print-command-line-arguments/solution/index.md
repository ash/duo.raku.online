---
title: 'Solutio: Print argumentorum lineae mandati'
---

{% include menu.html %}

Programma argumenta e linea mandati accipit. Sunt in serie `@*ARGS`. Itaque ansam per elementa eius requirimus.

## Codex

```raku
.say for @*ARGS;
```

🦋 Inveni codicem fontem in archivo [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Exitus

Curre programma. Proba id argumenta imprimere, unum in quaque linea:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
