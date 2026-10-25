---
title: 'Solution: Множинне закінчення'
---

{% include menu.html %}

Програма має перевірити число від користувача. Якщо воно більше за одиницю, слово має бути в множині.

## Код

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Знайдіть програму у файлі [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Вивід

Запустіть програму щонайменше два рази. Перевірте її з введенням `1`. Потім спробуйте будь-яке інше ціле число, більше за нуль:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Коментар

Тут ви можете часто помилятися. Ви можете набрати один `?` замість подвійного `??`. Або ви можете набрати двокрапку `:` замість `!!`. Або ви можете зробити і те, і інше.

{% include nav.html %}
