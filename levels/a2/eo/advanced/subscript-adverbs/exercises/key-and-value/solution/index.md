---
title: 'Solvo: Ŝlosilo kaj valoro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Vi povas trovi la fontkodon en la dosiero [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Eligo

```
(x 10)
```

## Komentoj

1. La adverbo `:kv` redonas la ŝlosilon kaj la valoron. Ĝi donas ilin kiel liston.

1. Por hako, la ŝlosilo estas la nomo en la subskribo. Do `%h<x>:kv` donas la liston `(x 10)`.

{% include nav.html %}
