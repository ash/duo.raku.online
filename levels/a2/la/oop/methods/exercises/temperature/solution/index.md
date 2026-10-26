---
title: 'Solutio: Conversio temperaturae'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

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

1. Methodus attributo `degrees` obiecti utitur. Itaque formula nullum argumentum requirit.

1. `100` gradus Celsiani sunt `212` gradus Fahrenheitiani.

{% include nav.html %}
