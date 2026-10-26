---
title: Serĉi simbolon
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi povas listigi la nomojn de pakaĵo. Vi ankaŭ povas ricevi unu nomon en alia maniero. Uzu la nomon kiel ŝlosilon en la simboltabelo de la pakaĵo. La simboltabelo estas la tabelo de ĝiaj nomoj. Per ŝlosilo, la programo povas elekti la nomon, dum ĝi ruliĝas. Jen modulo, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Skribu apartan programon. Ĝi ŝargas la modulon. Poste ĝi presas la valoron de `$pi`. Ĝi devas trovi `$pi` en la simboltabelo per `Circle::{'$pi'}`. Ne uzu la plenan nomon `$Circle::pi`.

## Ekzemplo

Rulu la programon kun la modulo sur la serĉvojo. Ĝi presas:

```console
$ raku -I. lookup.raku
3.14
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
