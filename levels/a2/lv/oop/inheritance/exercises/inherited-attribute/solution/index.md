---
title: 'Risinājums: Mantots atribūts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

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

🦋 Atrodiet programmu failā [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Izvade

```
2
4
```

## Komentāri

1. `Bike` un `Car` abas manto no `Vehicle` atribūtu `wheels`. Tās manto arī tā piekļuves metodi. Tās neveido jaunu atribūtu. Tās tikai dod mantotajam atribūtam noklusēto vērtību. Klasei `Bike` tā ir `2`. Klasei `Car` tā ir `4`.

1. Katrā klasē iekšā ir sava noklusētā vērtība. Tāpēc jūs varat izveidot objektus vienkārši ar `Bike.new` un `Car.new`. Mantotā piekļuves metode tad atgriež pareizo riteņu skaitu.

1. Jūs joprojām varat padot vērtību paši, piemēram, `Car.new(wheels => 3)`. Tad šī vērtība aizstāj noklusējumu. Bet velosipēdam un automašīnai parasti ir normāls riteņu skaits. Tāpēc noklusējumi padara parasto gadījumu vienkāršu. Un dažreiz jūs tomēr varat izdarīt izņēmumu.

{% include nav.html %}
