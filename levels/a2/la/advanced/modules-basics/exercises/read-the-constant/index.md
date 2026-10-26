---
title: Constantem legere
translations_gpt:
---

{% include menu.html %}

## Problema

Ecce modulus in archivo `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Scribe programma. Hunc modulum per `need` onerat, non per `use`. Deinde valorem `$pi` imprimit. Memento: `need` nomina non importat. Itaque ad variabilem per nomen moduli pervenis.

## Exemplum

```console
$ raku -I. read-pi.raku
3.14
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
