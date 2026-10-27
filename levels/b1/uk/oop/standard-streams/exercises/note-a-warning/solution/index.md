---
title: 'Розв''язання: Занотуйте попередження'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Вихідний код можна знайти у файлі [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Вивід

```
Warning: the value is negative
3
```

## Коментарі

1. `note` надсилає попередження у стандартний потік помилок, але лише тоді, коли значення справді від'ємне. `say` надсилає справжній результат, абсолютне значення `3`, у стандартний вивід.

1. Попередження лишається у стандартному потоці помилок. Тож воно не змішується зі справжнім виводом програми. Якщо відкинути стандартний потік помилок через `2>/dev/null`, лишається тільки `3`.

{% include nav.html %}
