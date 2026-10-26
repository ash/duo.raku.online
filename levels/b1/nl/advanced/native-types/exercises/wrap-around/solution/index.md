---
title: 'Solution: Rondom wikkelen'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. Een `uint8` gaat van `0` tot `255`, dus hij heeft 256 verschillende waarden. In de praktijk wordt ermee modulo 256 gerekend.

1. `250 + 10` zou `260` zijn, en dat past niet. Daarom wrapt de waarde en komt hij uit op `260 - 256 = 4` boven de onderkant. Overflow betekent dus niet alleen dat je één stap over de bovenkant gaat. Elk resultaat buiten het bereik wordt weer in het bereik teruggebracht.

1. De andere kant op geeft ook overflow. In een unsigned type kan het verlagen van `0` geen `-1` opleveren. Daarom wrapt het naar het maximum, `255`.

{% include nav.html %}
