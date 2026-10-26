---
title: 'Solution: Ein Pod-Abschnitt'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Du findest den Quellcode in der Datei [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Ausgabe

```
2
```

## Kommentare

1. `$=pod` enthält das Pod der Datei als Liste von Blöcken. `$=pod[0]` ist der einzige `=begin pod`-Block.

1. Seine `.contents` sind die Blöcke in ihm, also die `=head1`-Überschrift und der Absatz. Daher ist `.contents.elems` gleich `2`. Indem ein Programm so in die Struktur hineingeht, liest es seine eigene Dokumentation als Daten.

{% include nav.html %}
