---
title: 'Solvo: Trioblo kiel metodo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Ĉi tie, `triple` estas metodo. Ĝi apartenas al la objekto. Ĝi laboras kun la propra `n` de la objekto. Vi transdonas nenion al ĝi.

1. Komparu ĝin kun la subrutino. Tie, la datumoj venas kiel argumento. Ĉi tie, la datumoj estas en la objekto. Ambaŭ programoj donas `21`.

{% include nav.html %}
