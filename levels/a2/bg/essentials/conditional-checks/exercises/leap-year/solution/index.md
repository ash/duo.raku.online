---
title: 'Solution: Високосна година'
---

{% include menu.html %}

## Отказ от отговорност

Решението по-долу е за упражнение. То ви учи да използвате условни проверки. Raku има вграден клас `Date`. В реалния живот можете да научите неговите методи. Ще научим за този клас във втората част на курса.

## Решение

Тези стъпки казват дали годината е високосна:

1. ако годината не се дели на 4 => обикновена година
1. ако годината не се дели на 100 => високосна година
1. ако годината не се дели на 400 => обикновена година
1. иначе => високосна година

Raku има вградени типове за дати и часове. Можете да използвате и тях. Затова втората част на курса има тази задача отново.

## Код 1

Първото решение следва точно стъпките по-горе:

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

Второто решение събира цялата логика в един израз. Не винаги ви трябват кръглите скоби. Тук ги добавяме, за да е кодът по-ясен.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Намерете програмата във файла [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Изход

Опитайте и двете програми с най-важните случаи. Например използвайте 1900, 2000, 2020 и 2021.

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

Понякога Raku има нужда от `True` или `False`. Това наричаме булев контекст. В булев контекст `%%` и `%` дават обратни резултати. Ако единият дава `True`, другият дава `False`. Можете да използвате този факт. Изберете един от двата оператора. Тогава не е нужно да пишете сравнение с нула.

```raku
say ?(100 % 3);    # Вярно
say 100 % 3 != 0;  # Вярно

say ?(100 %% 3);   # Невярно
say 100 %% 3 != 0; # Невярно
```
%%/tipblock

{% include nav.html %}
