---
title: 'Risinājums: Nosauciet tipu'
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

my $felix = Cat.new;

say $felix.WHAT;
say $felix.WHAT === Cat.WHAT;
say $felix.WHAT === Dog.WHAT;
```

🦋 Atrodiet programmu failā [name-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/classes/name-the-type.raku).

## Izvade

```
(Cat)
True
False
```

## Komentāri

1. `WHAT` atgriež tipa objektu. Raku to rāda apaļās iekavās: `(Cat)`. Tātad `$felix` ir `Cat`.

1. `===` pārbauda, vai divi tipa objekti ir viens un tas pats. `$felix.WHAT === Cat.WHAT` ir `True`. Fēlikss tiešām ir `Cat`. Bet `$felix.WHAT === Dog.WHAT` ir `False`. `Cat` un `Dog` ir dažādi tipi. Tāpēc to tipa objekti nav viens un tas pats.

{% include nav.html %}
