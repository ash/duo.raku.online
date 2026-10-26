---
title: 'Solutio: Sectio Pod'
translations_gpt:
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Fontem codicis in fasciculo [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku) invenire potes.

## Exitus

```
2
```

## Commentarii

1. `$=pod` Pod fasciculi habet. Est index truncorum. `$=pod[0]` est unicus truncus `=begin pod`.

1. Eius `.contents` sunt trunci intus: titulus `=head1` et paragraphus. Itaque `.contents.elems` est `2`. Programma sic in structuram intrare potest. Hoc modo suam documentationem ut data legit.

{% include nav.html %}
