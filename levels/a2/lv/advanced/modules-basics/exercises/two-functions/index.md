---
title: Divas funkcijas vienā modulī
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Izveidojiet moduli ar nosaukumu `Calc` failā `Calc.rakumod`. Tas eksportē divas apakšprogrammas: `add` un `mul`. Katra no tām saņem divus argumentus. `add` atgriež to summu. `mul` atgriež to reizinājumu.

Pēc tam uzrakstiet atsevišķu programmu. Tā izmanto moduli un izdrukā `add(3, 4)` un `mul(3, 4)`. Katrs rezultāts ir savā rindā.

## Piemērs

Palaidiet programmu ar moduli uz meklēšanas ceļa. Tā izdrukā:

```console
$ raku -I. calc.raku
7
12
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
