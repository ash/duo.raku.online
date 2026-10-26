---
title: 'Solution: Rondom wikkelen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Je kunt de broncode vinden in het bestand [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Uitvoer

```
4
255
```

## Opmerkingen

1. Een `uint8` gaat van `0` tot `255`. Dat zijn 256 verschillende waarden. Eigenlijk is elke berekening ermee modulo 256. Het resultaat is de rest na deling door 256.

1. Normaal is `250 + 10` gelijk aan `260`. Maar `260` past niet. Daarom wrapt de waarde. Hij begint weer onderaan en komt uit op `260 - 256 = 4`. Overflow is niet alleen één stap over de bovenkant. Elk resultaat buiten het bereik komt terug in het bereik.

1. De andere richting geeft ook overflow. In een unsigned type kan het verlagen van `0` geen `-1` geven. Daarom wrapt de waarde naar de grootste waarde, `255`.

{% include nav.html %}
