---
title: 'Solvo: Forigi ŝlosilon'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Eligo

```
2
```

## Komentoj

1. La adverbo `:delete` forigas la eron el la hako. Ĝi ankaŭ redonas la valoron, sed ĉi tie ni ignoras ĝin.

1. La hako havis tri erojn komence, kaj nun ĝi havas `2`. Tio montras, ke unu estis forigita. Ni kalkulas per `.elems`, kiu ne dependas de la ordo de la ŝlosiloj. Do la eligo ĉiam estas la sama.

{% include nav.html %}
