---
title: 'Lösung: Ein Buch'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Sowohl `has $.title` als auch `has $.author` deklarieren ein Attribut und dazu einen Accessor, der es liest.

1. Beide Accessoren stehen in einer Zeichenkette mit doppelten Anführungszeichen. Jeder steht in geschweiften Klammern, `{$b.title}` und `{$b.author}`. Das ist die Form, mit der man Code in eine Zeichenkette setzt. Raku führt den Code in den Klammern aus und setzt sein Ergebnis ein. Die Accessoren werden also aufgerufen, und ihre Werte kommen in die Zeichenkette.

1. Beide Attribute sind Zeichenketten, also ist es eine gute Idee, sie als `Str` zu deklarieren.

{% include nav.html %}
