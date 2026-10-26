---
title: Statistikas modulis
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šeit ir modulis `Stats.rakumod`. Tas eksportē divas apakšprogrammas: `total` un `mean`. Apakšprogramma `mean` izmanto `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Uzrakstiet atsevišķu programmu. Tā izmanto šo moduli. Tā ņem sarakstu `10, 20, 30, 40`. Tā izdrukā šī saraksta kopsummu un vidējo vērtību.

## Piemērs

Palaidiet programmu ar moduli uz meklēšanas ceļa. Tā izdrukā:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
