---
title: 'Lösung: Mitarbeiter und Rollen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `Manager` und `Intern` erben das Attribut `name` und die Methode `badge` von `Employee`. Also muss keine von beiden diesen Code wiederholen.

1. Jede Kindklasse überschreibt `role`. Weil `badge` die Methode `self.role` aufruft, benutzt `badge` die neue Version, die zum tatsächlichen Objekt gehört. Deshalb bekommen der Manager und der Praktikant verschiedene Namensschilder.

1. Der Name der Methode, `role`, ist einfach ein Name. Aber er lautet genauso wie das Schlüsselwort `role`, das Sie später kennenlernen.

{% include nav.html %}
