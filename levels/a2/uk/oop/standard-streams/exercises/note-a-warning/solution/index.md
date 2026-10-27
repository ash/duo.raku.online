---
title: 'Розв''язання: Занотуйте попередження'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

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

1. `note` надсилає попередження у стандартний потік помилок. Вона робить це лише тоді, коли значення справді від'ємне. `say` надсилає справжній результат у стандартний вивід. Результат — це абсолютне значення, `3`.

1. Попередження йде у стандартний потік помилок. Тож воно не потрапляє у справжній вивід програми. `2>/dev/null` відкидає стандартний потік помилок. Тоді лишається тільки `3`.

{% include nav.html %}
