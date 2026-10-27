---
title: 'Oplossing: Werknemers en rollen'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

## Code

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

🦋 Je kunt de broncode vinden in het bestand [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Uitvoer

```
Anna - manager
Bob - intern
```

## Opmerkingen

1. `Manager` en `Intern` erven het attribuut `name` van `Employee`. Ze erven ook de methode `badge`. Dus hoeven ze deze code niet te herhalen.

1. Elke kindklasse overschrijft `role`. De methode `badge` roept `self.role` aan. Dus gebruikt ze de `role` van het object zelf. Dat is de nieuwe versie uit de kindklasse. Dus krijgen de manager en de stagiair verschillende badges.

1. Hier is `role` gewoon de naam van een methode. Maar Raku heeft ook een sleutelwoord `role`. Dat leer je later.

{% include nav.html %}
