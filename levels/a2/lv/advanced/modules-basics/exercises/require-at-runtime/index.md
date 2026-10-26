---
title: Ielādēt izpildes laikā
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šeit ir modulis `Greeting.rakumod`. Tas eksportē apakšprogrammu `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Ielādējiet šo moduli ar `require`, nevis ar `use`. Tad programma to ielādē **izpildes laikā**, kamēr programma darbojas. `require` automātiski neimportē nosaukumus. Tāpēc uzskaitiet vajadzīgo nosaukumu, šādi: `require Greeting <&hello>;`. Tad izsauciet `hello('Sam')` un izdrukājiet rezultātu.

Tagad parādiet, kāpēc ielāde izpildes laikā ir noderīga. Ielieciet `require` iekšpus `sub MAIN` ar karodziņu `--quiet`. Modulis ielādējas *tikai* tad, kad jūs tiešām vēlaties sveicienu. Ar `--quiet` programma moduli vispār neaiztiek. Tā tikai izdrukā `Silence.`

## Piemērs

Palaidiet programmu ar moduli uz meklēšanas ceļa. Tā izdrukā:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
