---
title: Dynamica variabilis
translations_gpt:
---

{% include menu.html %}

## Problema

Variabilis dynamica cum twigil `*` scribitur. Raku eam invenit foras per acervum vocationum quaerendo, non per circumscriptionem lexicam. Itaque valor quem subprogramma videt ab eo pendet qui id vocavit. Hoc clausulae permittit codicem quem vocat sub alia persona exsequi.

1. Declara variabilem dynamicam `$*user` cum valore `'guest'`.
2. Scribe subprogramma `whoami` quod imprimit `running as ` et deinde `$*user` praesentem (exempli gratia, `running as guest`). Nullos parametros habet, itaque `$*user` directe legere debet.
3. Voca `whoami` semel in gradu summo. `guest` ostendit.
4. Deinde fac clausulam quae `$*user` iterum ut `'admin'` declarat. Intra eam voca *idem* `whoami` iterum. Nunc `admin` ostendit.

## Exemplum

Programma imprimit:

```
running as guest
running as admin
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
