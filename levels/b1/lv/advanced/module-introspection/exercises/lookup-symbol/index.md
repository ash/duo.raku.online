---
title: Atrast simbolu
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Jūs varat ne tikai uzskaitīt pakotnes nosaukumus, bet arī piekļūt vienam nosaukumam. Lai to izdarītu, izmantojiet nosaukumu kā atslēgu pakotnes stash. Tad nosaukumam nav jābūt fiksētam kodā. Šeit ir modulis `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Uzrakstiet atsevišķu programmu, kas ielādē moduli un izdrukā `$pi` vērtību. Tai jāatrod `$pi` stash ar `Circle::{'$pi'}`. Tā nedrīkst izmantot kvalificēto nosaukumu `$Circle::pi`.

## Piemērs

Ja to palaižat ar moduli meklēšanas ceļā, programma izdrukā:

```console
$ raku -I. lookup.raku
3.14
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
