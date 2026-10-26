---
title: 'Решение: Счётчик'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Исходный код можно найти в файле [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Вывод

```
0
5
```

## Комментарии

1. У атрибута есть `is rw`. Поэтому его аксессор возвращает контейнер, в который можно записывать. `= 0` даёт атрибуту начальное значение. Первый `say` проверяет новый счётчик. Он действительно начинается со значения по умолчанию, `0`.

1. В аксессор можно записывать. Поэтому `++` работает так, как вы ждёте. Он прибавляет 1 к значению счётчика.

{% include nav.html %}
