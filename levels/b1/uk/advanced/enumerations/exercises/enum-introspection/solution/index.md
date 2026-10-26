---
title: 'Розв''язання: Кількість і сума'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Константи записано як пари. Тож кожна отримує значення, яке ми обрали, а не автоматичні числа від нуля.

1. `.enums` повертає відображення, де кожне ім'я константи вказує на своє значення. `.elems` рахує записи, і монет тут чотири.

1. `.values` дає лише числа, що стоять за іменами. Потім `.sum` додає їх разом: `1 + 5 + 10 + 25` — це `41`.

{% include nav.html %}
