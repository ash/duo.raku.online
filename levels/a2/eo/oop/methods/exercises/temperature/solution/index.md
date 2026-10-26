---
title: 'Solvo: Konvertado de temperaturo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Celsius {
    has $.degrees;

    method to-fahrenheit {
        $.degrees * 9 / 5 + 32;
    }
}

say Celsius.new(degrees => 100).to-fahrenheit;
```

🦋 Vi povas trovi la fontkodon en la dosiero [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Eligo

```
212
```

## Komentoj

1. La metodo uzas la atributon `degrees` de la objekto. Do la formulo bezonas neniun argumenton.

1. `100` gradoj laŭ Celsio estas `212` gradoj laŭ Fahrenheit.

{% include nav.html %}
