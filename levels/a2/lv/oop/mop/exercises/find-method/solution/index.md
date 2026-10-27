---
title: 'Risinājums: Atrodiet metodi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `.^find_method` atgriež metodi, ja tā ir. Ja tās nav, tā atgriež nedefinētu vērtību. `so` pārvērš to par vienkāršu Būla vērtību, `True` vai `False`.

1. Klasei `Dog` nav savu metožu. Bet rezultāts ir `True`. `find_method` pārmeklē visu mantošanas ķēdi. Tā atrod `speak` augstāk, klasē `Animal`. Īsts metodes izsaukums uz `Dog` strādā tāpat. Arī tas šādi atrod mantoto metodi.

{% include nav.html %}
