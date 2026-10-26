---
title: De datastructuur dumpen
translations_gpt: Oefening 'De datastructuur dumpen'
---

{% include menu.html %}

## Probleem

Hier is een geneste datastructuur. Er zitten gegevens in andere gegevens:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Doe er twee dingen mee:

1. Dump `@data` met `dd`, in een vorm voor programmeurs.
2. Toon dezelfde vorm als een tekenreeks. Zet de tekst `Structure: ` ervoor.

## Voorbeeld

Het programma toont twee regels. Ze lijken erg op elkaar:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Oplossing

✅ [Bekijk de oplossing](solution)

{% include nav.html %}
