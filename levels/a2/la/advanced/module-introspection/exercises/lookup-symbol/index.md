---
title: Symbolum quaerere
translations_gpt: true
---

{% include menu.html %}

## Problema

Nomina fasciculi enumerare potes. Etiam unum nomen alio modo accipere potes. Nomine ut clave in stash fasciculi utere. Stash est tabula nominum fasciculi. Cum clave, programma nomen eligere potest dum currit. Ecce modulus, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Programma separatum scribe. Id modulum onerat. Deinde valorem `$pi` imprimit. `$pi` in stash per `Circle::{'$pi'}` invenire debet. Noli nomen plenum `$Circle::pi` adhibere.

## Exemplum

Programma curre cum modulo in via investigationis. Id imprimit:

```console
$ raku -I. lookup.raku
3.14
```

## Solutio

✅ [Vide solutionem](solution)

{% include nav.html %}
