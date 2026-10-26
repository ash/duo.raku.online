---
title: Uzskaitīt simbolus
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Jums ir modulis failā `Circle.rakumod`, kas definē divus `our` mainīgos:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Uzrakstiet programmu, kas izmanto moduli. Vispirms tā izdrukā, cik nosaukumu definē moduļa pakotne. Pēc tam tā izdrukā pašus nosaukumus alfabētiskā secībā.

## Piemērs

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
