---
title: 'Solvo: Trioblo kiel metodo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 Vi povas trovi la fontkodon en la dosiero [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Eligo

```
21
```

## Komentoj

1. Kiel metodo, `triple` apartenas al la objekto kaj uzas la `n` de la objekto. Vi transdonas nenion.

1. En la subrutina versio, la datumoj venas kiel argumento. Ĉi tie, la datumoj anstataŭe loĝas en la objekto. Ambaŭ versioj donas `21`.

{% include nav.html %}
