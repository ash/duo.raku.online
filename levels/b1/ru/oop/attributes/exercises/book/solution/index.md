---
title: 'Решение: Книга'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Исходный код можно найти в файле [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Вывод

```
Raku by Larry
```

## Комментарии

1. И `has $.title`, и `has $.author` объявляют атрибут, а также аксессор, который его читает.

1. Оба аксессора используются в одной строке в двойных кавычках. Каждый из них стоит в фигурных скобках: `{$b.title}` и `{$b.author}`. Это форма, которая позволяет вставить код в строку. Raku выполняет код в скобках и вставляет его результат. Так аксессоры вызываются, а их значения попадают в строку.

1. Оба атрибута — строки, поэтому их стоит объявить с типом `Str`.

{% include nav.html %}
