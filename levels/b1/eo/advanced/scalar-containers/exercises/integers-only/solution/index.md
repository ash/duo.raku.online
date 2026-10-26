---
title: 'Solvo: Nur entjeroj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

## Kodo

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Vi povas trovi la fontkodon en la dosiero [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Eligo

```
250
(Int)
```

## Komentoj

1. La tipa limigo `Int` en `my Int $cars` igas la ujon rifuzi ĉiujn ne-entjerajn valorojn. Rekta atribuo de `250.7`, kiu estas `Rat`, donus kompiltempan eraron.

1. Voki `.Int` sur la racionala valoro `250.7` konvertas ĝin al la entjero `250`. Ĝi simple forĵetas la frakcian parton. La nova valoro konvenas al la ujo. Ne konfuzu tion kun rondigo.

1. La pseŭdometodo `.WHAT` montras, ke la valoro en la ujo havas la tipon `Int`.

{% include nav.html %}
