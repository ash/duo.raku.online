---
title: 'Solution: Formatierter Text'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Du findest den Quellcode in der Datei [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Ausgabe

Ausführung mit `raku --doc`:

```
Greeting

Hello, world!
```

## Kommentare

1. `B<world>` markiert das Wort als fett. Wenn es als reiner Text gerendert wird, sieht es wie normaler Text aus. Aber reichere Formate zeigen es fett.

1. `raku --doc` rendert das Pod, führt aber keinen Programmcode aus.

1. Um den fetten Text wirklich zu *sehen*, rendere das Pod in ein Format, das Stile hat. Installiere einen Formatierer wie `Pod::To::HTML` mit `zef install Pod::To::HTML`. Dann führe `raku --doc=HTML formatted-text.raku` aus. Jetzt steht das Wort in einem HTML-Element `<b>`. Die reine Textausgabe von `--doc` ist anders. Sie kann keine Fettschrift zeigen, wenn sie in eine Datei oder eine Pipe geht.

{% include nav.html %}
