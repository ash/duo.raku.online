---
title: Uzi statistikan modulon
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi havas modulon `Stats.rakumod`, kiu eksportas du subrutinojn, `total` kaj `mean`. La subrutino `mean` estas konstruita sur `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Skribu apartan programon, kiu uzas ĉi tiun modulon. Por la listo `10, 20, 30, 40`, ĝi devas presi kaj la sumon kaj la mezumon.

## Ekzemplo

Se vi rulas ĝin kun la modulo sur la serĉvojo, la programo presas:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
