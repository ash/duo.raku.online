---
title: Nolasīt konstanti
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Jums ir modulis failā `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Uzrakstiet programmu, kas ielādē šo moduli ar `need`, nevis `use`. Tai jāizdrukā `$pi` vērtība. Atcerieties, ka `need` neimportē nosaukumus. Tāpēc mainīgo jūs sasniedzat caur moduļa nosaukumu.

## Piemērs

```console
$ raku -I. read-pi.raku
3.14
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
