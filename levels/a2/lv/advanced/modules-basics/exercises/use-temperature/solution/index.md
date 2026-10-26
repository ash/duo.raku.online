---
title: 'Risinājums: Izmantot pārveidotāju'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `use Temperature` ielādē moduli. Tas arī importē eksportēto apakšprogrammu `c-to-f`. Tāpēc programma var to izsaukt tieši.

1. `sub MAIN($celsius)` saņem komandrindas argumentu. Tāpēc jūs izvēlaties temperatūru, kad palaižat programmu. Tā nav fiksēta kodā. Bez argumenta Raku automātiski izdrukā lietošanas paziņojumu. Šis paziņojums parāda, kā palaist programmu.

1. Raku ir jāatrod modulis. Tāpēc jūs palaižat programmu ar `-I.`. Tad Raku meklē `Temperature.rakumod` pašreizējā direktorijā. Programma pārvērš `100` °C par `212` °F.

{% include nav.html %}
