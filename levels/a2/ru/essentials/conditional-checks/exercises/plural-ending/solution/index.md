---
title: 'Решение: Окончание множественного числа'
---

{% include menu.html %}

Программа должна проверить число от пользователя. Если оно больше единицы, слово должно быть во множественном числе.

## Код

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Вы можете найти исходный код в файле [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Вывод

Запустите программу хотя бы два раза. Проверьте её с числом `1`. Потом попробуйте любое другое целое число больше нуля:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Комментарии

Здесь вы можете часто ошибаться. Вы можете написать один `?` вместо двойного `??`. Или вы можете написать двоеточие `:` вместо `!!`. Или можете сделать и то, и другое.

{% assign human=1 %}
{% include nav.html %}
