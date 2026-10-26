---
title: 'Решение: Описание переменной'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Исходный код можно найти в файле [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Вывод

```
Str
Scalar
$lang
```

## Комментарии

1. `.^name` возвращает тип значения в контейнере. Этот тип — `Str`.

1. `.VAR` возвращает контейнер за переменной. `.^name` у контейнера возвращает `Scalar`. Это тип самого контейнера.

1. `.VAR.name` возвращает имя переменной вместе с сигилом: `$lang`. Обратите внимание, что это метод `name`. Это не мета-метод `^name` из первых двух строк.

{% include nav.html %}
