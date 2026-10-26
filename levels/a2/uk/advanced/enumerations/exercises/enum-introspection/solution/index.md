---
title: 'Розв''язання: Кількість і сума'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Вихідний код можна знайти у файлі [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Вивід

```
4
41
```

## Коментарі

1. Ми записуємо константи як пари. Тож ми самі обираємо значення кожної константи. Raku не нумерує їх від нуля.

1. `.enums` повертає відображення. Відображення схоже на хеш. У ньому кожне ім'я константи має своє значення. `.elems` рахує записи. Монет чотири.

1. `.values` бере лише числа, що стоять за іменами. `.sum` додає їх: `1 + 5 + 10 + 25` — це `41`.

{% include nav.html %}
