---
title: 'Solution: Високосний рік'
---

{% include menu.html %}

## Відмова від відповідальності

Рішення нижче — для практики. Воно вчить вас використовувати умовні перевірки. У Raku є вбудований клас `Date`. У реальному житті ви можете вивчити його методи. Ми вивчимо цей клас у другій частині курсу.

## Рішення

Ці кроки показують, чи рік високосний:

1. якщо рік не ділиться на 4 => звичайний рік
1. якщо рік не ділиться на 100 => високосний рік
1. якщо рік не ділиться на 400 => звичайний рік
1. інакше => високосний рік

У Raku є вбудовані типи для дат і часу. Ви теж можете їх використовувати. Тому це завдання є ще раз у другій частині курсу.

## Код 1

Перше рішення точно виконує кроки вище:

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

Друге рішення вміщує всю логіку в один вираз. Вам не завжди потрібні круглі дужки. Ми додаємо їх тут, щоб код був зрозуміліший.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Знайдіть програму у файлі [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Вихідні дані

Спробуйте обидві програми з найважливішими випадками. Наприклад, візьміть 1900, 2000, 2020 і 2021.

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

Іноді Raku потрібно `True` або `False`. Ми називаємо це логічним контекстом. У логічному контексті `%%` і `%` дають протилежні результати. Якщо один дає `True`, інший дає `False`. Ви можете використати цей факт. Виберіть один із двох операторів. Тоді вам не потрібно писати порівняння з нулем.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
