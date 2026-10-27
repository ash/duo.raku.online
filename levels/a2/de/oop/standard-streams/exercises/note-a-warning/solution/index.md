---
title: 'Lösung: Vermerken Sie eine Warnung'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Du findest den Quellcode in der Datei [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Ausgabe

```
Warning: the value is negative
3
```

## Kommentare

1. `note` schickt die Warnung an die Standardfehlerausgabe. Das tut es nur, wenn der Wert wirklich negativ ist. `say` schickt das echte Ergebnis an die Standardausgabe. Das Ergebnis ist der Betrag, `3`.

1. Die Warnung geht an die Standardfehlerausgabe. So kommt sie nicht in die echte Ausgabe des Programms. `2>/dev/null` wirft die Standardfehlerausgabe weg. Dann bleibt nur die `3` übrig.

{% include nav.html %}
