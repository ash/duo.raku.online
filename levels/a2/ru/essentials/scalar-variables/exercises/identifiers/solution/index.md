---
title: 'Решение: Исправьте идентификаторы'
---

{% include menu.html %}

Исправить идентификаторы можно по-разному. Вот несколько способов:

## Код

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Все эти идентификаторы правильные. Но имена с апострофами — не лучшая идея. Не используйте их (`$don't`), если у вас нет веской причины.

🦋 Вы можете найти исходный код в файле [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Вывод

Эта программа ничего не печатает. Rakudo компилирует и запускает её. Ошибок быть не должно:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Комментарии

Вот проблемы с именами из задачи:

1. В имени не может быть пробелов: `$ A G E`.
2. Переменной нужен сигил: `Name`. В Raku есть переменные без сигила. Но даже для них нельзя написать `my Name`.
3. Имя не может начинаться с апострофа: `$'Middle'Name`. На самом деле здесь это одинарная кавычка.
4. Имя также не может начинаться с цифры: `$2address`.
5. В имени не может быть двух дефисов рядом: `$from--to`.

{% assign human=1 %}
{% include nav.html %}
