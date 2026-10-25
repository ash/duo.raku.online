---
title: 'Solution: Остання цифра'
---

{% include menu.html %}

Ідея в тому, щоб використати ділення за модулем 10. Так ви отримаєте останню цифру числа.

## Код

Ось розв'язок:

```raku
my $n = prompt 'Введіть число: ';
my $d = $n % 10;
say "Остання цифра числа $n - це $d.";
```

🦋 Знайдіть програму у файлі [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Вивід

Запустіть програму і введіть додатнє ціле число:

```console
$ raku exercises/numbers/the-last-digit.raku
Введіть число: 1234
Остання цифра числа 1234 - це 4.
```

## Коментар

Зверніть увагу, що з від'ємними числами це працює не так, як ви, можливо, очікуєте. Наприклад, `-11 % 10` дорівнює `9`, а не `1`.

{% include nav.html %}
