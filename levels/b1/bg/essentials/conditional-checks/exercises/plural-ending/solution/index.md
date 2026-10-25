---
title: 'Solution: Множествено окончание'
---

{% include menu.html %}

Програмата трябва да провери дали числото е по-голямо от едно. Ако е така, думата трябва да е в множествено число.

## Код

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Намерете програмата във файла [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Изход

Стартирайте програмата два или повече пъти. Опитайте с вход `1` и с някакво друго положително цяло число:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Коментар

Може често по грешка да пишете единичен `?` вместо двойния `??`. Може също да напишете двоеточие `:` вместо `!!` или да направите и двете грешки.

{% include nav.html %}
