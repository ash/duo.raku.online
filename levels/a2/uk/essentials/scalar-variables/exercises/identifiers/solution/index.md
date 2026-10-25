---
title: 'Solution: Виправлення ідентифікаторів'
---

{% include menu.html %}

Ви можете виправити ідентифікатори по-різному. Ось деякі способи:

## Код

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Усі ці ідентифікатори правильні. Але імена з апострофами — не найкраща ідея. Уникайте їх, якщо у вас `$немає` вагомої причини.

🦋 Ви можете знайти вихідний код у файлі [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Вивід

Ця програма нічого не виводить. Rakudo компілює і запускає її. Ви не маєте побачити жодних помилок:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Коментарі

Ось проблеми з іменами в завданні:

1. В імені не може бути пробілів: `$ A G E`.
1. Змінній потрібен сигіл: `Name`. У Raku є і змінні без сигіла. Але навіть для них не можна написати `my Name`.
1. Ім'я не може починатися з апострофа: `$'Middle'Name`. Насправді тут це одинарна лапка.
1. Ім'я також не може починатися з цифри: `$2address`.
1. В імені не може бути двох дефісів поруч: `$from--to`.

{% include nav.html %}
