---
title: 'Oplossing: Een boek'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Je kunt de broncode vinden in het bestand [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Uitvoer

```
Raku by Larry
```

## Opmerkingen

1. Zowel `has $.title` als `has $.author` declareren een attribuut en ook een accessor die het leest.

1. Beide accessors worden in één string met dubbele aanhalingstekens gebruikt. Elk staat tussen accolades, `{$b.title}` en `{$b.author}`. Dit is de vorm om code in een string te zetten. Raku voert de code tussen de accolades uit en voegt het resultaat in. Zo worden de accessors aangeroepen, en hun waarden komen in de string.

1. Beide attributen zijn strings, dus het is een goed idee om ze als `Str` te declareren.

{% include nav.html %}
