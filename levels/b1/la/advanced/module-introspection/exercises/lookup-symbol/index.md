---
title: Symbolum quaerere
translations_gpt: true
---

{% include menu.html %}

## Problema

Praeter enumerationem nominum fasciculi, singulum nomen attingere potes. Ad hoc, nomine ut clave in stash fasciculi utere. Tum nomen in codice fixum esse non debet. Ecce modulus, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Programma separatum scribe quod modulum onerat et valorem `$pi` imprimit. `$pi` in stash per `Circle::{'$pi'}` invenire debet. Nomen qualificatum `$Circle::pi` adhibere non debet.

## Exemplum

Si id cum modulo in via investigationis curris, programma imprimit:

```console
$ raku -I. lookup.raku
3.14
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
