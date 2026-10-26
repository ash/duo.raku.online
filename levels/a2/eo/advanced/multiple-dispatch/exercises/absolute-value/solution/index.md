---
title: 'Solvo: Absoluta valoro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Vi povas trovi la fontkodon en la dosiero [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Eligo

```
7
4
```

## Komentoj

1. La unua kandidato funkcias nur por negativaj nombroj. Ĝi redonas la nombron kun la kontraŭa signo. Ĉi tiu valoro estas pozitiva.

1. Ĉiuj aliaj nombroj iras al la dua kandidato. Tiuj estas nulo kaj la pozitivaj nombroj. La dua kandidato redonas la valoron sen ŝanĝo.

{% include nav.html %}
