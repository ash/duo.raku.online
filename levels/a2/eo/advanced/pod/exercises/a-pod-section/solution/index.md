---
title: 'Solvo: Pod-sekcio'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `$=pod` havas la Pod de la dosiero. Ĝi estas listo de blokoj. `$=pod[0]` estas la sola bloko `=begin pod`.

1. Ĝiaj `.contents` estas la blokoj en ĝi: la titolo `=head1` kaj la alineo. Do `.contents.elems` estas `2`. Programo povas iri en la strukturon kiel ĉi tie. Tiel ĝi legas sian propran dokumentadon kiel datumojn.

{% include nav.html %}
