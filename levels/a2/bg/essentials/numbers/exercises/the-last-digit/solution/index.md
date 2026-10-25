---
title: 'Solution: Последната цифра'
---

{% include menu.html %}

Ето идеята на решението. Използвайте модулно деление на 10. То дава последната цифра на числото.

## Код

Ето решението:

```raku
my $n = prompt 'Въведете число: ';
my $d = $n % 10;
say "Последната цифра на $n е $d.";
```

🦋 Намерете програмата във файла [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Изход

Стартирайте програмата и въведете положително цяло число:

```console
$ raku exercises/numbers/the-last-digit.raku
Въведете число: 1234
Последната цифра на 1234 е 4.
```

## Коментар

Внимавайте с отрицателните числа. Тук резултатът не е този, който очаквате. Например `-11 % 10` е `9`, а не `1`.

{% include nav.html %}
