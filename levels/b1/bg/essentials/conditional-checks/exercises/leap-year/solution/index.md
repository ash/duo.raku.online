---
title: 'Solution: Високосна година'
---

{% include menu.html %}

## Отказ от отговорност

Решението по-долу е за упражнение с условни проверки. За истински задачи можете да научите методите на вградения клас `Date`. За този клас ще говорим във втората част на курса.

## Решение

Този алгоритъм казва дали годината е високосна:

1. ако годината не се дели на 4 => обикновена година
1. ако годината не се дели на 100 => високосна година
1. ако годината не се дели на 400 => обикновена година
1. иначе => високосна година

Имайте предвид, че Raku има вградени типове за работа с дати и часове. Затова ще се върнем към тази задача във втората част на курса.

## Код 1

Първото решение прави точно това, което казват стъпките по-горе:

```raku
my $year = prompt 'Year: ';

if $year % 4 {
    say 'Common year';
}
elsif $year % 100 {
    say 'Leap year';
}
elsif $year % 400 {
    say 'Common year';
}
else {
    say 'Leap year';
}
```

🦋 Намерете програмата във файла [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Код 2

Във второто решение цялата логика е в един израз. Скобите не винаги са нужни, но тук те правят кода по-ясен.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Намерете програмата във файла [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Изход

Тествайте и двете програми с най-важните случаи, например 1900, 2000, 2020 и 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Year: 1900
Common year

$ raku exercises/conditional-checks/leap-year.raku
Year: 2000
Leap year
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2020
Leap year

$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2021
Common year
```

%%tipblock
## `%%` срещу `%`

Имайте предвид, че в булев контекст операторите `%%` и `%` дават обратни резултати. Можете да използвате това, за да изберете правилния оператор. Тогава не е нужно да пишете сравнение с нула.

```raku
say ?(100 % 3);    # Вярно
say 100 % 3 != 0;  # Вярно

say ?(100 %% 3);   # Невярно
say 100 %% 3 != 0; # Невярно
```
%%/tipblock

{% include nav.html %}
