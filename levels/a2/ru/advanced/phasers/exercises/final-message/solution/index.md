---
title: 'Решение: Финальное сообщение'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Найдите программу в файле [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Вывод

```
processed 3 items
```

## Комментарии

1. В коде фейзер `END` стоит перед циклом. Но он выполняется последним, после основного кода. К этому времени цикл уже три раза прибавил 1 к `$count`.

1. Фейзер хранит связь с переменной `$count`. Поэтому он читает *последнее* значение переменной. Он не читает `0` из строки с фейзером. Вот почему итог обычно пишут в `END`.

{% include nav.html %}
