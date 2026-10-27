---
title: 'Lösung: Vermerken Sie eine Warnung'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `note` schickt die Warnung an die Standardfehlerausgabe, aber nur, wenn der Wert wirklich negativ ist. `say` schickt das eigentliche Ergebnis, den Betrag `3`, an die Standardausgabe.

1. Die Warnung bleibt auf der Standardfehlerausgabe. So mischt sie sich nicht in die eigentliche Ausgabe des Programms. Wenn Sie die Standardfehlerausgabe mit `2>/dev/null` wegwerfen, bleibt nur die `3` übrig.

{% include nav.html %}
