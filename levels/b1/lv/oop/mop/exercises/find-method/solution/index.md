---
title: 'Risinājums: Atrodiet metodi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Atrodiet programmu failā [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Izvade

```
True
```

## Komentāri

1. `.^find_method` atgriež metodi, ja tā eksistē. Ja tā neeksistē, tā atgriež nedefinētu vērtību. Tad `so` to pārvērš par vienkāršu Būla vērtību.

1. `Dog` pati nedefinē nevienu metodi, bet rezultāts tomēr ir `True`. `find_method` pārmeklē visu mantošanas ķēdi un atrod `speak` augstāk, klasē `Animal`. Tieši tā arī īsts metodes izsaukums uz `Dog` atrod mantoto metodi.

{% include nav.html %}
