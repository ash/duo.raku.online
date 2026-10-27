---
title: 'Risinājums: Dejojošs robots'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Atrodiet programmu failā [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Izvade

```
beep
beep
spinning around
```

## Komentāri

1. Šeit ir citādi nekā iepriekšējos piemēros. `Dancing` neaizstāj metodi, kas jau ir. Tā atnes pavisam jaunu metodi, `dance`. Klase `Robot` neko nezina par šo metodi.

1. `Robot.new but Dancing` iemaisa lomu tikai vienā objektā. Tas notiek, kamēr programma darbojas. Tāpēc `$dancing` prot divas lietas. Tas prot `speak`, no klases. Tas prot arī `dance`, no lomas. Vienkāršais `$plain` prot tikai `speak`.

1. Jaunā spēja pieder tikai šim vienam objektam. Tā nepieder klasei `Robot`. Tāpēc `$plain.dance` dod kļūdu. `$plain` nekad nesaņēma lomu.

{% include nav.html %}
