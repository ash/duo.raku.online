---
title: 'Risinājums: Izmantot pārveidotāju'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

Programma `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Abus pirmkoda failus atrodiet direktorijā [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Izvade

```console
$ raku -I. temperature.raku 100
212
```

## Komentāri

1. `use Temperature` ielādē moduli un importē tā eksportēto apakšprogrammu `c-to-f`. Tāpēc programma var to izsaukt tieši.

1. `sub MAIN($celsius)` saņem komandrindas argumentu. Tāpēc jūs izvēlaties temperatūru, kad palaižat programmu. Tā nav ierakstīta kodā. Ja palaižat programmu bez argumenta, Raku automātiski izdrukā lietošanas paziņojumu.

1. Raku jāspēj atrast moduli. Tieši tāpēc jūs palaižat programmu ar `-I.`. Tad Raku meklē `Temperature.rakumod` pašreizējā direktorijā. Pārvēršot `100` °C, iegūst `212` °F.

{% include nav.html %}
