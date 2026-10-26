---
title: 'Решение: Описание переменной'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение задачи.

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

1. `.^name` даёт тип значения в контейнере, и это `Str`.

1. `.VAR` даёт контейнер, который стоит за переменной. Затем `.^name` у него возвращает `Scalar`, то есть тип самого контейнера.

1. `.VAR.name` возвращает имя переменной, `$lang`, вместе с сигилом. Обратите внимание, что это метод `name`. Это не мета-метод `^name`, который мы использовали в первых двух строках.

{% include nav.html %}
