---
title: 'Solutio: Operarii et partes'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `Manager` et `Intern` attributum `name` et methodum `badge` ex `Employee` heredant. Itaque neutra illum codicem repetere debet.

1. Quaeque classis filia `role` superscribit. Quia `badge` vocat `self.role`, novam versionem adhibet quae ad ipsum obiectum pertinet. Itaque administratrix et tiro diversas tesseras accipiunt.

1. Nomen methodi, `role`, solum nomen est. Sed idem est ac verbum `role`, quod postea videbis.

{% include nav.html %}
