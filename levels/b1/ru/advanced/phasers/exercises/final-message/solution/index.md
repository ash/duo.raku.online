---
title: 'Решение: Финальное сообщение'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. Фейзер `END` записан перед циклом, но выполняется последним. Он выполняется, когда основной код закончил работу. К этому моменту `$count` уже увеличен три раза.

1. Фейзер замыкается на `$count`, то есть хранит связь с этой переменной. Поэтому он читает *финальное* значение. Он не читает `0` из той строки, где стоит фейзер. Именно поэтому итоговое сообщение обычно помещают в `END`.

{% include nav.html %}
