---
title: Izmantot pārveidotāju
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šeit ir modulis failā `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Uzrakstiet atsevišķu programmu. Tā izmanto šo moduli. Programma saņem temperatūru Celsija grādos kā komandrindas argumentu. Ar moduli tā pārvērš temperatūru Fārenheita grādos. Tad tā izdrukā rezultātu.

## Piemērs

```console
$ raku -I. temperature.raku 100
212
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
