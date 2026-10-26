---
title: Convertorem utere
translations_gpt:
---

{% include menu.html %}

## Problema

Modulum habes in archivo `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Scribe programma separatum quod hoc modulo utitur. Programma temperaturam Celsianam ut argumentum lineae imperandi accipit. Eam per modulum in Fahrenheitianam convertit et effectum imprimit.

## Exemplum

```console
$ raku -I. temperature.raku 100
212
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
