---
title: 'Solution: Перетворення вводу користувача у число'
---

{% include menu.html %}

Програма може бути такою простою:

## Код

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 Ви можете знайти вихідний код у файлі [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Приклад

Запустіть її і введіть ціле число, яке може бути додатним або від'ємним:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Коментарі

Як ми вже [бачили](/uk/essentials/typed-variables/allomorphs), тут `prompt` повертає значення `IntStr`. Його можна присвоїти змінній `Int` без жодного приведення.

Але зверніть увагу, що деякі рядки не можна перетворити на ціле число. Якщо ви введете такий рядок, програма зупиниться з винятком.

{% include nav.html %}
