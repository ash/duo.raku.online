---
title: 'Solution: De grootte classificeren'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 Je kunt de broncode vinden in het bestand [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Uitvoer

```
small
medium
large
```

## Opmerkingen

1. Alle drie de kandidaten nemen één `Int`. Zonder de `where`-clausules botsen ze. Raku kan er dan niet tussen kiezen. De voorwaarden bij de eerste twee maken ze verschillend. De derde kandidaat neemt alle andere getallen.

1. De `where`-clausules controleren `$n.abs`. Dus telt alleen de grootte van het getal, niet het teken. `size(7)` past bij de eerste kandidaat en geeft `small`. In `size(-250)` is de absolute waarde `250`. Die voldoet aan geen van beide voorwaarden. Dus gaat hij naar de laatste kandidaat, die al het andere neemt. Het resultaat is `large`.

1. Raku test de kandidaten van de meest specifieke naar de meest algemene. Hier is dat precies hun volgorde in de code.

{% include nav.html %}
