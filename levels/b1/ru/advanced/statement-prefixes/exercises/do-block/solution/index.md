---
title: 'Решение: Значение блока do'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Обычный `if` — это оператор, и его значение нельзя использовать. Префикс `do` превращает всю конструкцию `if`/`else` в выражение.

1. `7 > 5` истинно, поэтому выражение даёт `'big'`, и это значение присваивается переменной `$label`. Тот же приём работает с `do given` и `do for`.

1. Фигурные скобки `{ }` обязательны. В Raku `if` всегда принимает блок. Поэтому нельзя сократить ветки до `if 7 > 5 'big' else 'small'`. Такой код не компилируется и выдаёт ошибку *Missing block*.

{% include nav.html %}
