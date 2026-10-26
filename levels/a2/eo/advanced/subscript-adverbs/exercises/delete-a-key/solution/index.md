---
title: 'Solvo: Forigi ŝlosilon'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La adverbo `:delete` forigas la eron el la hako. Ĝi ankaŭ redonas la valoron, sed ĉi tie ni ne uzas ĝin.

1. Komence la hako havis tri erojn. Nun ĝi havas `2`. Do unu ero malaperis. Ni kalkulas la erojn per `.elems`. La ordo de la ŝlosiloj ne gravas por tio. Do la eligo ĉiam estas la sama.

{% include nav.html %}
