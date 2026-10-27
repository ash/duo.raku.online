---
title: 'Risinājums: Darbinieki un lomas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

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

🦋 Atrodiet programmu failā [dog-and-cat.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/dog-and-cat.raku).

## Izvade

```
Anna - manager
Bob - intern
```

## Komentāri

1. `Manager` un `Intern` manto no `Employee` atribūtu `name` un metodi `badge`. Tāpēc nevienai no tām šis kods nav jāatkārto.

1. Katra bērnklase pārraksta `role`. Tā kā `badge` izsauc `self.role`, tā izmanto jauno versiju, kas pieder īstajam objektam. Tāpēc vadītājs un praktikants saņem dažādas caurlaides.

1. Metodes nosaukums `role` ir tikai nosaukums. Bet tas ir tāds pats kā atslēgvārds `role`, ar ko jūs iepazīsieties vēlāk.

{% include nav.html %}
