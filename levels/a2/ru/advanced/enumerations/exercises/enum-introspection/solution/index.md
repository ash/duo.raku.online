---
title: 'Решение: Подсчёт и сумма'
translations_gpt: true
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Мы пишем константы как пары. Так мы сами выбираем значение каждой константы. Raku не нумерует их с нуля.

1. `.enums` возвращает отображение. Отображение похоже на хеш. В нём у каждого имени константы есть своё значение. `.elems` считает записи. Монет четыре.

1. `.values` берёт только числа за именами. `.sum` складывает их: `1 + 5 + 10 + 25` равно `41`.

{% include nav.html %}
