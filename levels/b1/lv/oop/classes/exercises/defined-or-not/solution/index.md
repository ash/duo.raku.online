---
title: 'Risinājums: Definēts vai nē'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. Cikls iet cauri jauktām vērtībām. Divas ir tipa objekti, `Cat` un `Dog`, un divas ir instances, `Cat.new` un `Dog.new`.

1. Abi tipa objekti ir nedefinēti, tāpēc `defined` tiem atgriež `False`. Abas instances ir definētas, tāpēc tas atgriež `True`. Tātad ir svarīgi, vai vērtība ir tipa objekts vai īsta instance. Vērtības klasei nav nozīmes.

{% include nav.html %}
