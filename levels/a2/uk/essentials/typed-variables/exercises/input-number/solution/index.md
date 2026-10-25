---
title: 'Solution: Перетворення вводу користувача у число'
---

{% include menu.html %}

Програма може бути дуже простою:

## Код

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Ви можете знайти вихідний код у файлі [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Приклад

Запустіть її і введіть ціле число. Воно може бути додатним або від'ємним:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Коментарі

Ми [вже бачили](/uk/essentials/typed-variables/allomorphs), що `prompt` повертає значення `IntStr`. Ви можете присвоїти це значення змінній `Int`. Вам не треба його перетворювати.

Але будьте уважні. Іноді ви вводите рядок, який Raku не може перетворити на ціле число. Тоді програма зупиняється з винятком.

{% include nav.html %}
