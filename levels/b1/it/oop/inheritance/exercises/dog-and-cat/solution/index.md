---
title: 'Soluzione: Dipendenti e ruoli'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `Manager` e `Intern` ereditano da `Employee` l'attributo `name` e il metodo `badge`. Quindi nessuna delle due deve ripetere quel codice.

1. Ogni classe figlia sovrascrive `role`. Poiché `badge` chiama `self.role`, usa la nuova versione che appartiene all'oggetto vero e proprio. Così la manager e lo stagista ricevono badge diversi.

1. Il nome del metodo, `role`, è solo un nome. Ma è uguale alla parola chiave `role`, che incontrerai più avanti.

{% include nav.html %}
