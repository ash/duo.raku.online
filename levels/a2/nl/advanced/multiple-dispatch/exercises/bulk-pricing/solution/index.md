---
title: 'Solution: Staffelkorting'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
multi sub price(Int $qty where $qty >= 10) { say 'bulk price' }
multi sub price(Int $qty)                  { say 'normal price' }

price(3);
price(25);
```

🦋 Je kunt de broncode vinden in het bestand [bulk-pricing.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/bulk-pricing.raku).

## Uitvoer

```
normal price
bulk price
```

## Opmerkingen

1. De eerste kandidaat heeft een `where`-clausule. Die accepteert alleen hoeveelheden van 10 of meer. Dus gaat de aanroep `price(25)` naar deze kandidaat.

1. De tweede kandidaat heeft geen voorwaarde. Hij neemt alle andere aanroepen. Dus gaat `price(3)` daarheen.

{% include nav.html %}
