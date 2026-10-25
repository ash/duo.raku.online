---
title: 'Solution: Виправлення ідентифікаторів'
---

{% include menu.html %}

Є кілька способів виправити ідентифікатори. Ось деякі з них:

## Код

```raku
my $AGE = 30;
my $Name = 'Valdis';
my $Middle'Name = 'C.';
my $address2 = 'Second street, 12';
my $from-to = 'London to Paris';
```

Усі ідентифікатори дійсні. Але краще уникати апострофів в іменах, якщо у вас `$немає` вагомих причин.

🦋 Ви можете знайти вихідний код у файлі [identifiers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/identifiers.raku).

## Вивід

Ця програма нічого не виводить. Але коли Rakudo компілює і запускає її, ви не повинні отримати жодних помилок:

```console
$ raku exercises/scalar-variables/identifiers.raku
```

## Коментарі

Давайте подивимося, що було не так з оригінальними іменами:

1. Пробіли в іменах не дозволені: `$ A G E`.
1. Змінній потрібен сигіл: `Name`. У Raku можуть бути змінні без сигіла, але навіть їх не можна оголосити як `my Name`.
1. Ім'я не може починатися з апострофа, а точніше, з одинарної лапки: `$'Middle'Name`.
1. Ім'я не може починатися і з цифри: `$2address`.
1. Два дефіси не можуть стояти один за одним: `$from--to`.

{% include nav.html %}
