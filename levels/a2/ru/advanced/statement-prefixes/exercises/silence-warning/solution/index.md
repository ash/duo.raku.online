---
title: 'Решение: Подавление предупреждения'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Исходный код можно найти в файле [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Вывод

```
Hello, !
```

## Комментарии

1. Здесь неопределённая переменная `$name` попадает в строку. Обычно это даёт предупреждение: «use of uninitialized value». Но выражение стоит внутри `quietly`. Поэтому предупреждение скрыто. Программа печатает только приветствие.

1. Как и `do`, `quietly` возвращает значение своего блока. Поэтому программа сохраняет новую строку в `$greeting`. Имени нет, поэтому в строке пустое место.

1. `quietly` только скрывает предупреждение. Значение всё ещё не определено. Может быть, вы хотите *обработать* отсутствующее значение. Тогда задайте значение по умолчанию с помощью оператора defined-or `//`. `$name // 'friend'` даёт `'friend'`, когда `$name` не определено. Поэтому `"Hello, " ~ ($name // 'friend') ~ "!"` печатает `Hello, friend!`. Никакого предупреждения нет.

{% include nav.html %}
