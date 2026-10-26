---
title: 'Решение: Счётчик'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Атрибут объявлен с `is rw`, поэтому его аксессор возвращает изменяемый контейнер. `= 0` задаёт ему начальное значение. Первый `say` показывает, что новый счётчик действительно начинается с этого значения по умолчанию, `0`.

1. Аксессор допускает запись, поэтому `++` может его увеличить. Это работает так, как вы и ожидаете.

{% include nav.html %}
