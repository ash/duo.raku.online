---
title: 'Solution: Een Pod-sectie'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Je kunt de broncode vinden in het bestand [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Uitvoer

```
2
```

## Opmerkingen

1. `$=pod` bevat de Pod van het bestand als een lijst van blokken. `$=pod[0]` is het enige `=begin pod`-blok.

1. De `.contents` ervan zijn de blokken die erin zitten, namelijk de `=head1`-kop en de alinea. `.contents.elems` is dus `2`. Door zo door de structuur te navigeren, leest een programma zijn eigen documentatie als gegevens.

{% include nav.html %}
