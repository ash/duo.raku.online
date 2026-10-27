---
title: 'Solutio: Mandatum exsequere'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. `run` programma `echo` directe incipit. Quamque chordam ut argumentum separatum tradit. Nullum `:out` adest. Itaque exitus programmatis recta in screen it.

1. Argumentum ad `echo` venit exacte ut id scripsisti. Itaque programma `$HOME` ut est imprimit. Pro eo directoriam domesticam tuam non ponit. Hoc fit quia nullus interpres adest. Interpres eum mutaret. Ideo `run` electio praedefinita tuta est. Cum `shell` idem imperatum valde aliter operari potest.

1. Visne vere directoriam domesticam imprimere? Tum sine interpretem variabilem mutare. `shell 'echo home: $HOME'` aliquid ut `home: /home/anna` imprimit. Etiam apostrophos simplices in codice Raku serva. Cum apostrophis duplicibus, `"$HOME"`, problema est. Ipsum Raku variabilem suam `$HOME` in chordam inserere conatur. Hoc fit antequam `echo` omnino currit.

{% include nav.html %}
