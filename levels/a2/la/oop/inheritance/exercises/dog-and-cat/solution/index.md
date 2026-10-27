---
title: 'Solutio: Operarii et partes'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

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

🦋 Inveni codicem fontem in archivo [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Exitus

```
Anna - manager
Bob - intern
```

## Commentarii

1. `Manager` et `Intern` attributum `name` ex `Employee` heredant. Etiam methodum `badge` heredant. Itaque hunc codicem repetere non debent.

1. Quaeque classis filia `role` superscribit. Methodus `badge` vocat `self.role`. Itaque `role` ipsius obiecti adhibet. Haec est nova versio ex classe filia. Itaque administratrix et tiro diversas tesseras accipiunt.

1. Hic `role` solum nomen methodi est. Sed Raku etiam verbum `role` habet. De eo postea disces.

{% include nav.html %}
