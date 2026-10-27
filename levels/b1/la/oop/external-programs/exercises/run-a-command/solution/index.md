---
title: 'Solutio: Mandatum exsequere'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Inveni codicem fontem in archivo [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Exitus

```
home: $HOME
```

## Commentarii

1. `run` programma `echo` directe incipit et quamque chordam ut argumentum separatum tradit. Sine `:out` exitus programmatis recta in screen it.

1. Argumentum ad `echo` exacte ut scriptum pervenit. `$HOME` ut est imprimitur, non in directoriam domesticam tuam mutatum. Hoc fit quia nullus interpres adest qui id mutet. Ideo `run` electio praedefinita tuta est. Idem imperatum ad `shell` datum valde aliter se gerere posset.

1. Ut directoriam domesticam vere imprimas, sine interpretem variabilem mutare. `shell 'echo home: $HOME'` aliquid ut `home: /home/anna` imprimit. Etiam apostrophos simplices in parte Raku serva. `"$HOME"` cum apostrophis duplicibus problema faceret. Ipsum Raku variabilem nomine `$HOME` in chordam inserere conaretur. Hoc fieret antequam `echo` omnino curreret.

{% include nav.html %}
