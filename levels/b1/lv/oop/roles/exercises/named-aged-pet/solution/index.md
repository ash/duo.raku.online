---
title: 'Risinājums: Mājdzīvnieks ar vārdu un vecumu'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

## Kods

```raku
role Named {
    method label {
        'I am ' ~ self.name;
    }
}

role Aged {
    method status {
        self.age ~ ' years';
    }
}

class Pet does Named does Aged {
    has $.name;
    has $.age;
}

my $p = Pet.new(name => 'Rex', age => 3);
say $p.label;
say $p.status;
```

🦋 Atrodiet programmu failā [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Izvade

```
I am Rex
3 years
```

## Komentāri

1. `Pet` komponē divas lomas uzreiz. Tāpēc tā iegūst gan metodi `label`, gan metodi `status`.

1. Katras lomas metode izmanto atribūtu, `name` vai `age`, ko nodrošina klase `Pet`.

{% include nav.html %}
