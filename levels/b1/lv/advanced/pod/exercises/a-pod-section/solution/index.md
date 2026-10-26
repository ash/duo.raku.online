---
title: 'Risinājums: Pod sadaļa'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Atrodiet programmu failā [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Izvade

```
2
```

## Komentāri

1. `$=pod` satur faila Pod kā bloku sarakstu. `$=pod[0]` ir vienīgais bloks `=begin pod`.

1. Tā `.contents` ir bloki tā iekšpusē, un tie ir virsraksts `=head1` un rindkopa. Tāpēc `.contents.elems` ir `2`. Šādi ieejot struktūrā, programma nolasa savu dokumentāciju kā datus.

{% include nav.html %}
