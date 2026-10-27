---
title: 'Risinājums: Darbinieki un lomas'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `Manager` un `Intern` manto no `Employee` atribūtu `name`. Tās manto arī metodi `badge`. Tāpēc tām nav jāatkārto šis kods.

1. Katra bērnklase pārraksta `role`. Metode `badge` izsauc `self.role`. Tāpēc tā izmanto paša objekta `role`. Tā ir jaunā versija no bērnklases. Tāpēc vadītājs un praktikants saņem dažādas caurlaides.

1. Šeit `role` ir tikai metodes nosaukums. Bet Raku ir arī atslēgvārds `role`. Par to jūs uzzināsiet vēlāk.

{% include nav.html %}
