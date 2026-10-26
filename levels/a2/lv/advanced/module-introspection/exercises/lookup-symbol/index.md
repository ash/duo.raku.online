---
title: Atrast simbolu
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Jūs varat uzskaitīt pakotnes nosaukumus. Jūs varat arī iegūt vienu nosaukumu citā veidā. Izmantojiet nosaukumu kā atslēgu pakotnes stash. Stash ir tās nosaukumu tabula. Ar atslēgu programma var izvēlēties nosaukumu, kamēr tā darbojas. Šeit ir modulis `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Uzrakstiet atsevišķu programmu. Tā ielādē moduli. Tad tā izdrukā `$pi` vērtību. Tai jāatrod `$pi` stash ar `Circle::{'$pi'}`. Neizmantojiet pilno nosaukumu `$Circle::pi`.

## Piemērs

Palaidiet programmu ar moduli meklēšanas ceļā. Tā izdrukā:

```console
$ raku -I. lookup.raku
3.14
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
