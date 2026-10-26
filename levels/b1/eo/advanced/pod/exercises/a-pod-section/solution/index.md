---
title: 'Solvo: Pod-sekcio'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Vi povas trovi la fontkodon en la dosiero [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Eligo

```
2
```

## Komentoj

1. `$=pod` tenas la Pod de la dosiero kiel liston de blokoj. `$=pod[0]` estas la sola bloko `=begin pod`.

1. Ĝiaj `.contents` estas la blokoj ene de ĝi, kiuj estas la titolo `=head1` kaj la alineo. Do `.contents.elems` estas `2`. Kiam programo eniras la strukturon tiel, ĝi legas sian propran dokumentadon kiel datumojn.

{% include nav.html %}
