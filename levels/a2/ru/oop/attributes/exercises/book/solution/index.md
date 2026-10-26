---
title: 'Решение: Книга'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `has $.title` создаёт атрибут и аксессор для его чтения. `has $.author` делает то же самое.

1. Программа использует оба аксессора в одной строке в двойных кавычках. Каждый аксессор стоит в фигурных скобках: `{$b.title}` и `{$b.author}`. С фигурными скобками можно вставить код в строку. Raku выполняет код в скобках. Потом он вставляет результат в строку. Так Raku вызывает аксессоры, и их значения попадают в строку.

1. Оба атрибута — строки. Поэтому хорошо дать им тип `Str`.

{% include nav.html %}
