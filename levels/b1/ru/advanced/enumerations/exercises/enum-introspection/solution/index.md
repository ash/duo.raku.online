---
title: 'Решение: Подсчёт и сумма'
translations_gpt: true
---

{% include menu.html %}

Вот одно возможное решение задачи.

## Код

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Исходный код можно найти в файле [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Вывод

```
4
41
```

## Комментарии

1. Константы записаны в виде пар. Поэтому каждая получает значение, которое мы выбрали, а не автоматический номер от нуля.

1. `.enums` возвращает отображение, где каждое имя константы указывает на своё значение. `.elems` считает записи, и монет здесь четыре.

1. `.values` даёт только числа, которые стоят за именами. Затем `.sum` складывает их: `1 + 5 + 10 + 25` равно `41`.

{% include nav.html %}
