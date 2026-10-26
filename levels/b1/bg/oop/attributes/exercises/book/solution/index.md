---
title: 'Решение: Книга'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Намерете програмата във файла [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Изход

```
Raku by Larry
```

## Коментари

1. И `has $.title`, и `has $.author` декларират атрибут, а също и аксесор, който го чете.

1. Двата аксесора се използват в един низ с двойни кавички. Всеки от тях е във фигурни скоби, `{$b.title}` и `{$b.author}`. Това е формата, с която слагате код в низ. Raku изпълнява кода в скобите и вмъква резултата му. Така аксесорите се извикват и стойностите им влизат в низа.

1. Двата атрибута са низове, така че е добре да ги декларирате като `Str`.

{% include nav.html %}
