---
title: Symbola enumerare
translations_gpt: true
---

{% include menu.html %}

## Problema

Modulum habes in archivo `Circle.rakumod`, qui duas variabiles `our` definit:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Programma scribe quod modulum adhibet. Primum imprimit quot nomina fasciculus moduli definiat. Deinde nomina ipsa ordine alphabetico imprimit.

## Exemplum

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
