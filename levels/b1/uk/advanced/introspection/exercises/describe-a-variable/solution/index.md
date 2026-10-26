---
title: 'Розв''язання: Опишіть змінну'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. `.^name` дає тип значення в контейнері, тобто `Str`.

1. `.VAR` дає контейнер, що стоїть за змінною. Потім `.^name` для нього повертає `Scalar`, тобто тип самого контейнера.

1. `.VAR.name` повертає ім'я змінної, `$lang`, разом із сигілом. Зверніть увагу, що це метод `name`. Це не метаметод `^name`, який ми використали в перших двох рядках.

{% include nav.html %}
