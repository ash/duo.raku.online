---
title: 'Risinājums: Definēts vai nē'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Cat {
}

class Dog {
}

for Cat, Dog, Cat.new, Dog.new -> $thing {
    say $thing.defined;
}
```

🦋 Atrodiet programmu failā [defined-or-not.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/defined-or-not.raku).

## Izvade

```
False
False
True
True
```

## Komentāri

1. Cikls iet pāri diviem tipa objektiem, `Cat` un `Dog`. Tas iet arī pāri divām instancēm, `Cat.new` un `Dog.new`.

1. Abi tipa objekti ir nedefinēti. Tāpēc `defined` tiem atgriež `False`. Abas instances ir definētas. Tāpēc `defined` tām atgriež `True`. Šeit ir svarīga tikai viena lieta. Vai vērtība ir tipa objekts vai īsta instance? Vērtības klasei nav nozīmes.

{% include nav.html %}
