---
title: 'Oplossing: Een boek'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `has $.title` maakt een attribuut en een accessor om het te lezen. `has $.author` doet hetzelfde.

1. Het programma gebruikt beide accessors in één string met dubbele aanhalingstekens. Elke accessor staat tussen accolades: `{$b.title}` en `{$b.author}`. Met accolades kun je code in een string zetten. Raku voert de code tussen de accolades uit. Daarna zet Raku het resultaat in de string. Zo roept Raku de accessors aan, en hun waarden komen in de string.

1. Beide attributen zijn strings. Dus is het goed om ze het type `Str` te geven.

{% include nav.html %}
