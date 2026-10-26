---
title: Statistikas modulis
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Jums ir modulis `Stats.rakumod`, kas eksportē divas apakšprogrammas, `total` un `mean`. Apakšprogramma `mean` ir uzbūvēta uz `total` pamata:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Uzrakstiet atsevišķu programmu, kas izmanto šo moduli. Sarakstam `10, 20, 30, 40` tai jāizdrukā gan kopsumma, gan vidējā vērtība.

## Piemērs

Ja to palaižat ar moduli uz meklēšanas ceļa, programma izdrukā:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
