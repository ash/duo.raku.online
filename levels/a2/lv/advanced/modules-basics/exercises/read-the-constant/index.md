---
title: Nolasīt konstanti
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šeit ir modulis failā `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Uzrakstiet programmu. Tā ielādē šo moduli ar `need`, nevis ar `use`. Tad tā izdrukā `$pi` vērtību. Atcerieties: `need` neimportē nosaukumus. Tāpēc jūs piekļūstat mainīgajam caur moduļa nosaukumu.

## Piemērs

```console
$ raku -I. read-pi.raku
3.14
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
