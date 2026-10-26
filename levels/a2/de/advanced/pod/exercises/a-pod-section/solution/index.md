---
title: 'Solution: Ein Pod-Abschnitt'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `$=pod` enthält das Pod der Datei. Das ist eine Liste von Blöcken. `$=pod[0]` ist der einzige `=begin pod`-Block.

1. Seine `.contents` sind die Blöcke darin: die `=head1`-Überschrift und der Absatz. Also ist `.contents.elems` gleich `2`. So kann ein Programm in die Struktur hineingehen. Auf diese Weise liest es seine eigene Dokumentation als Daten.

{% include nav.html %}
