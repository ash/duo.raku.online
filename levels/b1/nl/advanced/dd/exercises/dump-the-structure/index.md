---
title: De datastructuur dumpen
translations_gpt: Oefening 'De datastructuur dumpen'
---

{% include menu.html %}

## Probleem

Je hebt de volgende geneste datastructuur:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Doe er twee dingen mee:

1. Gebruik `dd` om een dump van `@data` voor ontwikkelaars te tonen.
2. Toon dezelfde weergave als een tekenreeks, die begint met de tekst `Structure: `.

## Voorbeeld

Het programma toont twee vergelijkbare regels:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
