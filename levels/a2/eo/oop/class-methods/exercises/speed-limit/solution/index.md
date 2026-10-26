---
title: 'Solvo: Formulo en la klaso'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La metodo uzas neniun atributon. Ĝi laboras nur kun sia parametro `$r`. Do vi povas voki ĝin sur la klaso mem. Vi ne bezonas fari objekton antaŭe.

1. `Geometry.circle-area(10)` vokas la metodon sur la tipobjekto. Ĝi transdonas `10` al la metodo. La rezulto estas `π * 10 * 10`. Post rondigo, ĝi estas `314`.

{% include nav.html %}
