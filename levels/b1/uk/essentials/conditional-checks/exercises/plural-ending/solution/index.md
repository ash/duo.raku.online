---
title: 'Solution: Множинне закінчення'
---

{% include menu.html %}

Програма повинна перевірити, чи число більше за одиницю. Якщо так, слово має бути у формі множини.

## Код

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Знайдіть програму у файлі [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Вивід

Запустіть програму два чи більше разів. Спробуйте ввести `1`, а також якесь інше додатне ціле число:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Коментар

Ви можете часто помилково набирати один `?` замість подвійного `??`. Ви також можете набрати двокрапку `:` замість `!!` або зробити обидві помилки.

{% include nav.html %}
