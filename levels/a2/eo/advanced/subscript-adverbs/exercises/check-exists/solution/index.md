---
title: 'Solvo: Ĉu la ŝlosilo ekzistas'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my %h = a => 1, b => 2;
say %h<z>:exists;
```

🦋 Vi povas trovi la fontkodon en la dosiero [check-exists.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/check-exists.raku).

## Eligo

```
False
```

## Komentoj

1. La adverbo `:exists` diras al vi, ĉu la ŝlosilo estas tie. Ĝi ne prenas la valoron.

1. Ne estas ŝlosilo `z` en la hako. Do la rezulto estas `False`. Normala serĉo povas krei la ŝlosilon kiel kroman efikon. `:exists` ne faras tion.

{% include nav.html %}
