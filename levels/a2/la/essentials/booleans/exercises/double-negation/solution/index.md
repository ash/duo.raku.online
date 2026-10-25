---
title: 'Solutio: Duplex negatio'
---

{% include menu.html %}

Nunc codicem pro secunda parte exercitationis addimus. Eadem variabili iterum utimur:

## Codex

```raku
my $valor = False;
say !!$valor;

$valor = True;
say !!$valor;
```

🦋 Plenum codicem invenire potes in archivo [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Commentarii

Programma nondum curre. Primum cogitamus: quid imprimit? Ante variabilem sunt duo operatores negationis. Negatio `False` in `True` mutat et `True` in `False`. Hic duo `!` ut duo operatores negationis separati agunt. In primo casu prima negatio `False` in `True` mutat. Deinde secunda negatio id statim retro in `False` mutat. Secundus casus eodem modo agit. Post duas negationes valorem Booleanum initialem habemus.

## Exitus

Hic est exitus programmatis. Ostendit nos recte cogitavisse:

```console
$ raku exercises/booleans/double-negation.raku
Falsum
Verum
```

{% include nav.html %}
