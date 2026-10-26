---
title: 'Solvo: Formulo en la klaso'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Vi povas trovi la fontkodon en la dosiero [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Eligo

```
314
```

## Komentoj

1. La metodo uzas neniun atributon, nur sian parametron `$r`. Do vi povas voki ĝin sur la klaso mem, sen krei objekton antaŭe.

1. `Geometry.circle-area(10)` vokas la metodon sur la tipobjekto kaj transdonas `10` al ĝi. La rezulto estas `π * 10 * 10`, kio estas `314` post rondigo.

{% include nav.html %}
