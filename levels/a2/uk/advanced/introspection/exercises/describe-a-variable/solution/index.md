---
title: 'Розв''язання: Опишіть змінну'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Вихідний код можна знайти у файлі [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Вивід

```
Str
Scalar
$lang
```

## Коментарі

1. `.^name` повертає тип значення в контейнері. Цей тип — `Str`.

1. `.VAR` повертає контейнер за змінною. `.^name` для контейнера повертає `Scalar`. Це тип самого контейнера.

1. `.VAR.name` повертає ім'я змінної з її сигілом: `$lang`. Зверніть увагу, що це метод `name`. Це не метаметод `^name` з перших двох рядків.

{% include nav.html %}
