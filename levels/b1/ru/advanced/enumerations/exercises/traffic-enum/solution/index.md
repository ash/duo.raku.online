---
title: 'Решение: Светофор'
translations_gpt: true
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 Исходный код можно найти в файле [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Вывод

```
red is 0
amber is 1
green is 2
```

## Комментарии

1. `my Light $current` — обычная переменная, и её можно менять. Единственное ограничение — она должна хранить `Light`. Когда вы присваиваете следующую константу, сигнал переключается. Число каждый раз следует за именем: `0`, `1`, `2`.

1. Кажется, что `$current++` должен сам перейти к следующему сигналу. Но он завершается ошибкой проверки типа. `++` использует константу как простое число и возвращает `Int` (`red` становится `1`). Но `Int` не подходит к типу `Light`. Поэтому, чтобы переключить сигнал, вы присваиваете следующую константу, как показано выше.

1. Проверка типа работает при каждом присваивании, а не только при первом. `$current` принимает `red`, `amber` или `green`. Если присвоить что-то, что не является `Light`, будет ошибка проверки типа. Например, так будет с простым числом или строкой.

{% include nav.html %}
