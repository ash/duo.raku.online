---
title: 'Решение: Предупреждение через `note`'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 Исходный код можно найти в файле [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Вывод

```
Warning: the value is negative
3
```

## Комментарии

1. `note` отправляет предупреждение в стандартный поток ошибок. Она делает это, только когда значение действительно отрицательное. `say` отправляет настоящий результат в стандартный вывод. Результат — это абсолютное значение, `3`.

1. Предупреждение идёт в стандартный поток ошибок. Поэтому оно не попадает в настоящий вывод программы. `2>/dev/null` отбрасывает стандартный поток ошибок. Тогда остаётся только `3`.

{% include nav.html %}
