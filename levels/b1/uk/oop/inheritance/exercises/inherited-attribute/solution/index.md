---
title: 'Розв''язання: Успадкований атрибут'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
class Vehicle {
    has $.wheels;
}

class Bike is Vehicle {
    has $.wheels = 2;
}

class Car is Vehicle {
    has $.wheels = 4;
}

say Bike.new.wheels;
say Car.new.wheels;
```

🦋 Вихідний код можна знайти у файлі [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Вивід

```
2
4
```

## Коментарі

1. І `Bike`, і `Car` успадковують атрибут `wheels` та його аксесор від `Vehicle`. Жоден із них не оголошує атрибут заново. Вони лише дають успадкованому атрибуту типове значення: `2` для `Bike` і `4` для `Car`.

1. Типове значення вбудоване в кожен клас. Тож об'єкти можна створити простими `Bike.new` та `Car.new`. Потім успадкований аксесор повертає правильну кількість коліс.

1. Ви все одно можете передати значення самі, наприклад `Car.new(wheels => 3)`. Такий аргумент перекриває типове значення. Але велосипед чи автомобіль, найпевніше, вже має свою звичну кількість коліс. Тож типові значення роблять поширений випадок простим. Але для рідкісного винятку все одно лишається місце.

{% include nav.html %}
