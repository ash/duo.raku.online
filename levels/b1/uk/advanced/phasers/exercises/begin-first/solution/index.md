---
title: 'Розв''язання: Спочатку BEGIN'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Вихідний код можна знайти у файлі [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Вивід

```
5
```

## Коментарі

1. `BEGIN { 2 + 3 }` виконується під час компіляції й дає `5`. Коли ви використовуєте блок `BEGIN` як вираз, він повертає своє значення. Тут це значення присвоюється `$compiled`.

1. Обчислення відбувається лише раз, під час компіляції. Коли програма виконується, `$compiled` просто містить сталу `5`. Ось так `BEGIN` може обчислювати значення заздалегідь. Він потрібен не лише для раннього друку.

{% include nav.html %}
