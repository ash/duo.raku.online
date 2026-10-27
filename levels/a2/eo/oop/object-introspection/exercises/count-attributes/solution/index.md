---
title: 'Solvo: Nombru la atributojn'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Eligo

```
2
```

## Komentoj

1. `.^attributes` redonas liston. Ĝi havas la atributojn de la klaso.

1. `.elems` kalkulas ilin. La klaso `Point` havas du atributojn. Do la respondo estas `2`.

{% include nav.html %}
