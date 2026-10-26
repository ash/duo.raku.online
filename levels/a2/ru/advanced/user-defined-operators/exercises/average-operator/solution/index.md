---
title: 'Решение: Оператор среднего значения'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Исходный код можно найти в файле [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Вывод

```
7
```

## Комментарии

1. Мы объявляем оператор как `infix:<avg>`. Поэтому вы пишете его между двумя операндами, как `+` или `~`.

1. Тело складывает два операнда. Потом оно делит сумму на два. Для `4` и `10` результат — `7`.

{% include nav.html %}
