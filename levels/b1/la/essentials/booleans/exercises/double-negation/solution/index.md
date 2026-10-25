---
title: 'Solutio: Duplex negatio'
---

{% include menu.html %}

Ut secundam partem exercitationis solvamus, programma extendamus. Eadem variabili iterum uti possumus:

## Codex

```raku
my $valor = False;
say !!$valor;

$valor = True;
say !!$valor;
```

🦋 Plenum codicem invenire potes in archivo [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Commentarii

Antequam programma curris, cogitemus quid imprimet. Ante variabilem sunt duo operatores negationis. Agunt ut duae negationes separatae. In primo casu valor a `False` ad `True` mutatur. Deinde statim retro a `True` ad `False` mutatur. Secundus casus eodem modo agit. Post duas negationes valorem Booleanum initialem obtinemus.

## Exitus

Programma sequentem exitum imprimit, qui ostendit nos recte cogitavisse:

```console
$ raku exercises/booleans/double-negation.raku
Falsum
Verum
```

{% include nav.html %}
