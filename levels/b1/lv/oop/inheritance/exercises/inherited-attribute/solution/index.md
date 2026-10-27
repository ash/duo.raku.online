---
title: 'Risinājums: Mantots atribūts'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `Bike` un `Car` abas manto no `Vehicle` atribūtu `wheels` un tā piekļuves metodi. Neviena no tām nedeklarē atribūtu no jauna. Tās tikai dod mantotajam atribūtam noklusēto vērtību: `2` klasei `Bike` un `4` klasei `Car`.

1. Noklusējums ir iebūvēts katrā klasē. Tāpēc objektus var izveidot ar vienkāršu `Bike.new` un `Car.new`. Mantotā piekļuves metode tad atgriež pareizo riteņu skaitu.

1. Jūs joprojām varat padot vērtību paši, piemēram, `Car.new(wheels => 3)`. Šāds arguments pārraksta noklusējumu. Bet velosipēdam vai automašīnai visdrīzāk jau ir ierastais riteņu skaits. Tāpēc noklusējumi patur biežāko gadījumu vienkāršu. Bet joprojām paliek vieta retam izņēmumam.

{% include nav.html %}
