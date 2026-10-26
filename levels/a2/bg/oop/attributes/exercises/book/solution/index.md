---
title: 'Решение: Книга'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `has $.title` създава атрибут и аксесор за четенето му. `has $.author` прави същото.

1. Програмата използва двата аксесора в един низ с двойни кавички. Всеки аксесор е във фигурни скоби: `{$b.title}` и `{$b.author}`. Със скобите можете да сложите код в низ. Raku изпълнява кода в скобите. После слага резултата в низа. Така Raku извиква аксесорите и стойностите им влизат в низа.

1. Двата атрибута са низове. Затова е добре да им дадете типа `Str`.

{% include nav.html %}
