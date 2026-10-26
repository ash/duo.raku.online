---
title: Serĉi simbolon
translations_gpt:
---

{% include menu.html %}

## Problemo

Krom listigi la nomojn de pakaĵo, vi povas atingi unu solan nomon. Por tio, uzu la nomon kiel ŝlosilon en la simboltabelo de la pakaĵo. Tiam la nomo ne devas esti fiksita en la kodo. Jen modulo, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Skribu apartan programon, kiu ŝargas la modulon kaj presas la valoron de `$pi`. Ĝi devas trovi `$pi` en la simboltabelo per `Circle::{'$pi'}`. Ĝi ne uzu la kvalifikitan nomon `$Circle::pi`.

## Ekzemplo

Se vi rulas ĝin kun la modulo sur la serĉvojo, la programo presas:

```console
$ raku -I. lookup.raku
3.14
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
