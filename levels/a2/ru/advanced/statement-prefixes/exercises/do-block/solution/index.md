---
title: 'Решение: Значение блока do'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $label = do if 7 > 5 { 'big' } else { 'small' };

say $label;
```

🦋 Исходный код можно найти в файле [do-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/do-block.raku).

## Вывод

```
big
```

## Комментарии

1. Обычный `if` — это оператор. У него нет значения, которое можно использовать. Префикс `do` делает всю конструкцию `if`/`else` выражением.

1. `7 > 5` — это истина. Поэтому значение выражения — `'big'`. Программа присваивает его переменной `$label`. Тот же приём работает с `do given` и `do for`.

1. Фигурные скобки `{ }` нужно писать обязательно. В Raku `if` всегда требует блок. Поэтому ветки нельзя сократить, например так: `if 7 > 5 'big' else 'small'`. Этот код не компилируется. Ошибка — *Missing block*.

{% include nav.html %}
