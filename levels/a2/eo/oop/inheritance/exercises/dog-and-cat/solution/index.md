---
title: 'Solvo: Dungitoj kaj roloj'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
class Employee {
    has $.name;
    method role {
        'staff';
    }
    method badge {
        "$.name - " ~ self.role;
    }
}

class Manager is Employee {
    method role { 'manager' }
}

class Intern is Employee {
    method role { 'intern' }
}

say Manager.new(name => 'Anna').badge;
say Intern.new(name => 'Bob').badge;
```

🦋 Vi povas trovi la fontkodon en la dosiero [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Eligo

```
Anna - manager
Bob - intern
```

## Komentoj

1. `Manager` kaj `Intern` heredas la atributon `name` el `Employee`. Ili ankaŭ heredas la metodon `badge`. Do ili ne devas ripeti ĉi tiun kodon.

1. Ĉiu ida klaso superregas `role`. La metodo `badge` vokas `self.role`. Do ĝi uzas la `role` de la objekto mem. Tio estas la nova versio el la ida klaso. Do la manaĝero kaj la staĝanto ricevas malsamajn insignojn.

1. Ĉi tie, `role` estas nur la nomo de metodo. Sed Raku ankaŭ havas ŝlosilvorton `role`. Vi lernos pri ĝi poste.

{% include nav.html %}
