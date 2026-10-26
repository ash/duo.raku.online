---
title: Uzi statistikan modulon
translations_gpt:
---

{% include menu.html %}

## Problemo

Jen modulo, `Stats.rakumod`. Ĝi eksportas du subrutinojn: `total` kaj `mean`. La subrutino `mean` uzas `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Skribu apartan programon. Ĝi uzas ĉi tiun modulon. Ĝi prenas la liston `10, 20, 30, 40`. Ĝi presas la sumon kaj la mezumon, aŭ mezan valoron, de ĉi tiu listo.

## Ekzemplo

Rulu la programon kun la modulo sur la serĉvojo. Ĝi presas:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
