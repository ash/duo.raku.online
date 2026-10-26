---
title: Constantem legere
translations_gpt:
---

{% include menu.html %}

## Problema

Modulum habes in archivo `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Scribe programma quod hunc modulum per `need` onerat, non per `use`. Valorem `$pi` imprimere debet. Memento `need` nomina non importare. Itaque variabilem per nomen moduli attingis.

## Exemplum

```console
$ raku -I. read-pi.raku
3.14
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
