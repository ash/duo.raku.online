---
title: 'Solution: De grootte classificeren'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Alle drie de kandidaten nemen één `Int` aan, dus zonder de `where`-clausules zouden ze botsen. De voorwaarden bij de eerste twee maken ze verschillend. De derde vangt al het andere op.

1. De `where`-clausules testen `$n.abs`. Dus bepaalt alleen de grootte van het getal het resultaat, en het teken telt niet. `size(7)` past bij de eerste kandidaat (`small`). In `size(-250)` is de absolute waarde `250`. Die voldoet aan geen van beide voorwaarden en gaat door naar de vangnet-kandidaat (`large`).

1. De kandidaten worden getest van de meest specifieke naar de meest algemene. Hier is dat precies de volgorde waarin ze geschreven zijn.

{% include nav.html %}
