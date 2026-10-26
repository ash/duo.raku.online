---
title: 'Lösung: Ein Buch'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Du findest den Quellcode in der Datei [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Ausgabe

```
Raku by Larry
```

## Kommentare

1. `has $.title` erstellt ein Attribut und einen Accessor zum Lesen. `has $.author` macht das Gleiche.

1. Das Programm benutzt beide Accessoren in einer Zeichenkette mit doppelten Anführungszeichen. Jeder Accessor steht in geschweiften Klammern: `{$b.title}` und `{$b.author}`. Mit Klammern können Sie Code in eine Zeichenkette setzen. Raku führt den Code in den Klammern aus. Dann setzt Raku das Ergebnis in die Zeichenkette. Raku ruft also die Accessoren auf, und ihre Werte kommen in die Zeichenkette.

1. Beide Attribute sind Zeichenketten. Also ist es gut, ihnen den Typ `Str` zu geben.

{% include nav.html %}
