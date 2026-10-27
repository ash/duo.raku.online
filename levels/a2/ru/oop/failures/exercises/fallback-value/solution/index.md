---
title: 'Решение: Запасное значение'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Исходный код можно найти в файле [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Вывод

```
5
default
```

## Комментарии

1. `get(5)` как обычно возвращает `5`. Поэтому `//` оставляет это значение.

1. `get(0)` возвращает `Failure`. `Failure` — это значение с ошибкой внутри. Он не определён. Поэтому `//` берёт запасное значение, `'default'`. `//` тихо обрабатывает неопределённый `Failure`. Оператор не бросает исключение.

{% include nav.html %}
