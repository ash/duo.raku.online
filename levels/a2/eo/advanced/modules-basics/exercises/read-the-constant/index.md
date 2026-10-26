---
title: Legi la konstanton
translations_gpt:
---

{% include menu.html %}

## Problemo

Jen modulo en la dosiero `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Skribu programon. Ĝi ŝargas ĉi tiun modulon per `need`, ne per `use`. Poste ĝi presas la valoron de `$pi`. Memoru: `need` ne importas nomojn. Do vi atingas la variablon per la nomo de la modulo.

## Ekzemplo

```console
$ raku -I. read-pi.raku
3.14
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
