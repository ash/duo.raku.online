---
title: Convertorem utere
translations_gpt:
---

{% include menu.html %}

## Problema

Ecce modulus in archivo `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Scribe programma separatum. Hoc modulo utitur. Programma temperaturam Celsianam ut argumentum lineae imperandi accipit. Temperaturam per modulum in Fahrenheitianam mutat. Deinde effectum imprimit.

## Exemplum

```console
$ raku -I. temperature.raku 100
212
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
