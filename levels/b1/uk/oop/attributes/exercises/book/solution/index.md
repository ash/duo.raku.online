---
title: 'Розв''язання: Книжка'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. І `has $.title`, і `has $.author` оголошують атрибут, а також аксесор, який його читає.

1. Обидва аксесори використано в одному рядку з подвійними лапками. Кожен із них стоїть у фігурних дужках, `{$b.title}` та `{$b.author}`. Це форма, яка вставляє код у рядок. Raku виконує код у дужках і вставляє його результат. Тож аксесори викликаються, і їхні значення потрапляють у рядок.

1. Обидва атрибути — рядки, тож варто оголосити їх як `Str`.

{% include nav.html %}
