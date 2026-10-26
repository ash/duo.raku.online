---
title: 'Розв''язання: Книжка'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 Вихідний код можна знайти у файлі [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Вивід

```
Raku by Larry
```

## Коментарі

1. `has $.title` створює атрибут і аксесор, щоб його читати. `has $.author` робить те саме.

1. Програма використовує обидва аксесори в одному рядку з подвійними лапками. Кожен аксесор стоїть у фігурних дужках: `{$b.title}` та `{$b.author}`. З фігурними дужками можна вставити код у рядок. Raku виконує код у дужках. Потім він вставляє результат у рядок. Тож Raku викликає аксесори, і їхні значення потрапляють у рядок.

1. Обидва атрибути — рядки. Тож добре дати їм тип `Str`.

{% include nav.html %}
