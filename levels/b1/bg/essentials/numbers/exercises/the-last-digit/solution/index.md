---
title: 'Solution: Последната цифра'
---

{% include menu.html %}

Идеята е да използвате модулно деление на 10. Така получавате последната цифра на числото.

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

Забележете, че с отрицателни числа това не работи така, както може би очаквате. Например `-11 % 10` е `9`, а не `1`.

{% include nav.html %}
