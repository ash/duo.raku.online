---
title: Du funkcioj en unu modulo
translations_gpt:
---

{% include menu.html %}

## Problemo

Kreu modulon nomatan `Calc` en dosiero `Calc.rakumod`. Ĝi devas eksporti du subrutinojn, `add` kaj `mul`. Ili redonas la sumon kaj la produkton de siaj du argumentoj.

Poste skribu apartan programon, kiu uzas la modulon. Ĝi devas presi `add(3, 4)` kaj `mul(3, 4)`, ĉiun en sia propra linio.

## Ekzemplo

Se vi rulas ĝin kun la modulo sur la serĉvojo, la programo presas:

```console
$ raku -I. calc.raku
7
12
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
