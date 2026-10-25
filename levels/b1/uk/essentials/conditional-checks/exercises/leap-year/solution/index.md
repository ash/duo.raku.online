---
title: 'Solution: Високосний рік'
---

{% include menu.html %}

## Відмова від відповідальності

Рішення нижче — це практика з умовними перевірками. Для реальних задач ви можете вивчити методи вбудованого класу `Date`. Цей клас буде в другій частині курсу.

## Рішення

Цей алгоритм визначає, чи є рік високосним:

1. якщо рік не ділиться на 4 => звичайний рік
1. якщо рік не ділиться на 100 => високосний рік
1. якщо рік не ділиться на 400 => звичайний рік
1. інакше => високосний рік

Зверніть увагу, що в Raku є вбудовані типи для роботи з датами і часом. Тому ми повернемося до цього завдання в другій частині курсу.

## Код 1

Перше рішення робить саме те, що кажуть кроки вище:

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

🦋 Знайдіть програму у файлі [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Код 2

У другому рішенні вся логіка в одному виразі. Дужки потрібні не завжди, але тут вони роблять код зрозумілішим.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Знайдіть програму у файлі [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Вихідні дані

Перевірте обидві програми на найважливіших випадках, наприклад, 1900, 2000, 2020 і 2021.

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
## `%%` vs `%`

Зверніть увагу, що в логічному контексті оператори `%%` і `%` дають протилежні результати. Ви можете використати це, щоб вибрати потрібний оператор. Тоді вам не потрібно писати порівняння з нулем.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
