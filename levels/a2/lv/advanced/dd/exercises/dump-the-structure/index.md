---
title: Izgūt datu struktūru
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šeit ir ligzdota datu struktūra. Tajā ir dati citu datu iekšā:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Izdariet ar to divas lietas:

1. Izmetiet `@data` ar `dd` programmētājiem ērtā formā.
2. Izdrukājiet to pašu formu kā virkni. Ielieciet tekstu `Structure: ` pirms tās.

## Piemērs

Programma izdrukā divas rindas. Tās ir ļoti līdzīgas:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
