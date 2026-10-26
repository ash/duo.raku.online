---
title: 'Решение: Подавление предупреждения'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Если вставить неопределённую `$name` в строку, обычно появляется предупреждение «use of uninitialized value». Когда выражение обёрнуто в `quietly`, предупреждение скрыто, поэтому печатается только приветствие.

1. Как и `do`, `quietly` возвращает значение своего блока. Поэтому готовая строка сохраняется в `$greeting`. На месте отсутствующего имени в ней остаётся пустое место.

1. `quietly` только скрывает предупреждение, а значение по-прежнему не определено. Если вместо этого вы хотите *обработать* отсутствующее значение, задайте значение по умолчанию. Для этого используйте оператор defined-or `//`. `$name // 'friend'` даёт `'friend'`, когда `$name` не определено. Поэтому `"Hello, " ~ ($name // 'friend') ~ "!"` печатает `Hello, friend!` без всяких предупреждений.

{% include nav.html %}
