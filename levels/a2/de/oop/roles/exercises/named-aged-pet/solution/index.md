---
title: 'Lösung: Ein Haustier mit Namen und Alter'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

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

🦋 Du findest den Quellcode in der Datei [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Ausgabe

```
I am Rex
3 years
```

## Kommentare

1. `Pet` bindet zwei Rollen gleichzeitig ein. Das heißt, die Klasse nimmt beide Rollen in sich auf. Also bekommt `Pet` zwei Methoden, `label` und `status`.

1. Die Methode jeder Rolle benutzt ein Attribut, `name` oder `age`. Die Klasse `Pet` bringt diese Attribute mit.

{% include nav.html %}
