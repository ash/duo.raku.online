---
title: 'Розв''язання: Сума чисел'
---

{% include menu.html %}

Ось рішення.

## Код

```raku
my $a = prompt 'Enter number A: ';
my $b = prompt 'Enter number B: ';
my $c = prompt 'Enter number C: ';

my $sum = $a + $b + $c;

say "The sum of numbers is $sum.";
```

🦋 Повний код можна знайти у файлі [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Вивід

Запустіть програму кілька разів. Перевірте, що вона працює з різними видами чисел.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Enter number A: 1.2
Enter number B: -3.4
Enter number C: 45
The sum of the numbers is 42.8.
```

## Коментарі

Зверніть увагу: ми напряму використовуємо значення з підпрограми `prompt`. Але користувач може ввести рядок, який не є числом. Тоді у програми можуть бути проблеми. Пізніше ми вивчимо винятки. Після цього ми зможемо зробити програму кращою.

{% include nav.html %}
