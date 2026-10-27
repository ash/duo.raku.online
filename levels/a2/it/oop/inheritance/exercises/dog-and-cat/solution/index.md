---
title: 'Soluzione: Dipendenti e ruoli'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

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

🦋 Trova il programma nel file [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Output

```
Anna - manager
Bob - intern
```

## Commenti

1. `Manager` e `Intern` ereditano l'attributo `name` da `Employee`. Ereditano anche il metodo `badge`. Quindi non devono ripetere questo codice.

1. Ogni classe figlia sovrascrive `role`. Il metodo `badge` chiama `self.role`. Quindi usa il `role` dell'oggetto stesso. Questa è la nuova versione della classe figlia. Così la manager e lo stagista hanno badge diversi.

1. Qui `role` è solo il nome di un metodo. Ma Raku ha anche una parola chiave `role`. La vedrai più avanti.

{% include nav.html %}
