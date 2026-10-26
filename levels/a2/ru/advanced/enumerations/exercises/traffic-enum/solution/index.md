---
title: 'Решение: Светофор'
translations_gpt: true
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. `my Light $current` — обычная переменная. Её значение можно менять. Но она может хранить только `Light`. Присвойте следующую константу, и сигнал переключается. Каждый раз число меняется вместе с именем: `0`, `1`, `2`.

1. Кажется, что `$current++` сам переходит к следующему сигналу. Но возникает ошибка проверки типа. `++` видит в константе только её число. Он возвращает `Int`: `red` становится `1`. Но `Int` — это не `Light`. Поэтому, чтобы переключить сигнал, присвойте следующую константу, как выше.

1. Raku проверяет тип при каждом присваивании, а не только при первом. `$current` принимает `red`, `amber` или `green`. Другие значения он не принимает, например число или строку. Это не `Light`. Такое присваивание даёт ошибку проверки типа.

{% include nav.html %}
