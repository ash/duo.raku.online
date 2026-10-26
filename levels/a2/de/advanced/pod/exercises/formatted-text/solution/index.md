---
title: 'Solution: Formatierter Text'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Du findest den Quellcode in der Datei [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Ausgabe

Führe es mit `raku --doc` aus:

```
Greeting

Hello, world!
```

## Kommentare

1. `B<world>` macht das Wort fett. In reinem Text sieht es wie normaler Text aus. Aber reichere Formate zeigen es fett.

1. `raku --doc` zeigt das Pod als Text. Es führt keinen Code des Programms aus.

1. Willst du die Fettschrift wirklich *sehen*? Dann mach aus dem Pod ein Format mit Stilen. Installiere zuerst ein Formatierungsmodul, zum Beispiel `Pod::To::HTML`. Benutze dafür `zef install Pod::To::HTML`. Dann führe `raku --doc=HTML formatted-text.raku` aus. Jetzt steht das Wort in einem HTML-Element `<b>`. Reiner Text von `--doc` ist anders. Er kann in einer Datei oder einer Pipe keine Fettschrift zeigen.

{% include nav.html %}
