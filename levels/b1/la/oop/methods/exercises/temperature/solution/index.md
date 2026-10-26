---
title: 'Solutio: Conversio temperaturae'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
class Celsius {
    has $.degrees;

    method to-fahrenheit {
        $.degrees * 9 / 5 + 32;
    }
}

say Celsius.new(degrees => 100).to-fahrenheit;
```

🦋 Inveni codicem fontem in archivo [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Exitus

```
212
```

## Commentarii

1. Methodus proprio obiecti attributo `degrees` utitur. Itaque non necesse est argumentum pro formula tradere.

1. Pro `100` gradibus Celsianis effectus est `212` gradus Fahrenheitiani.

{% include nav.html %}
