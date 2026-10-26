---
title: Modulum statisticum utere
translations_gpt:
---

{% include menu.html %}

## Problema

Modulum `Stats.rakumod` habes qui duo subprogrammata exportat, `total` et `mean`. Subprogramma `mean` super `total` aedificatum est:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Scribe programma separatum quod hoc modulo utitur. Pro serie `10, 20, 30, 40` et summam et medium imprimere debet.

## Exemplum

Si id cum modulo in semita quaesitionis curris, programma imprimit:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
