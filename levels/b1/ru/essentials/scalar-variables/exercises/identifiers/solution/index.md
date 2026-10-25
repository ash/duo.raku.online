---
title: 'Решение: Исправьте идентификаторы'
---

{% include menu.html %}

Есть несколько способов исправить идентификаторы. Вот некоторые из них:

## Код

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Все идентификаторы допустимы. Но в именах лучше не использовать апострофы (`$don't`), если у вас нет веских причин.

🦋 Вы можете найти исходный код в файле [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Вывод

Эта программа ничего не печатает. Но когда Rakudo компилирует и запускает её, никаких ошибок быть не должно:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Комментарии

Давайте посмотрим, что было не так с исходными именами:

1. Пробелы в именах недопустимы: `$ A G E`.
2. Переменной нужен сигил: `Name`. В Raku могут быть переменные без сигила, но даже их нельзя объявить как `my Name`.
3. Имя не может начинаться с апострофа, а точнее, с одинарной кавычки: `$'Middle'Name`.
4. Имя не может начинаться и с цифры: `$2address`.
5. Два дефиса не могут идти друг за другом: `$from--to`.

{% assign human=1 %}
{% include nav.html %}
