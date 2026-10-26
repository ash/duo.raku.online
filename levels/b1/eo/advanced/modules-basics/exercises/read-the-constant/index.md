---
title: Legi la konstanton
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi havas modulon en dosiero `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Skribu programon, kiu ŝargas ĉi tiun modulon per `need`, ne `use`. Ĝi devas presi la valoron de `$pi`. Memoru, ke `need` ne importas nomojn. Do vi atingas la variablon per la nomo de la modulo.

## Ekzemplo

```console
$ raku -I. read-pi.raku
3.14
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
