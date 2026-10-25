---
title: 'Solution: Множествено окончание'
---

{% include menu.html %}

Програмата трябва да провери числото от потребителя. Ако то е по-голямо от едно, думата трябва да е в множествено число.

## Код

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Намерете програмата във файла [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Изход

Стартирайте програмата поне два пъти. Тествайте я с вход `1`. След това опитайте друго цяло число, по-голямо от нула:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Коментар

Тук може често да грешите. Може да напишете един `?` вместо двойния `??`. Или може да напишете двоеточие `:` вместо `!!`. Или може да направите и двете.

{% include nav.html %}
