---
title: 'Solvo: Absoluta valoro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La unua kandidato kongruas nur kun negativaj nombroj. Ĝi redonas la valoron kun la kontraŭa signo, kiu estas pozitiva.

1. Ĉiuj aliaj nombroj, tio estas nulo kaj la pozitivaj nombroj, iras al la dua kandidato. Ĝi redonas la valoron tute sen ŝanĝo.

{% include nav.html %}
