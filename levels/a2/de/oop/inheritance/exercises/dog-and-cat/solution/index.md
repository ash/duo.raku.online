---
title: 'Lösung: Mitarbeiter und Rollen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

🦋 Du findest den Quellcode in der Datei [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Ausgabe

```
Anna - manager
Bob - intern
```

## Kommentare

1. `Manager` und `Intern` erben das Attribut `name` von `Employee`. Sie erben auch die Methode `badge`. Also müssen sie diesen Code nicht wiederholen.

1. Jede Kindklasse überschreibt `role`. Die Methode `badge` ruft `self.role` auf. Also benutzt sie das `role` des Objekts selbst. Das ist die neue Version aus der Kindklasse. Also bekommen der Manager und der Praktikant verschiedene Namensschilder.

1. Hier ist `role` nur der Name einer Methode. Aber Raku hat auch ein Schlüsselwort `role`. Sie lernen es später kennen.

{% include nav.html %}
