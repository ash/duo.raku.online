---
title: 'Soluzione: Un animale con nome ed età'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

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

🦋 Trova il programma nel file [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Output

```
I am Rex
3 years
```

## Commenti

1. `Pet` compone due ruoli nello stesso momento. Questo vuol dire che prende tutti e due i ruoli dentro la classe. Così `Pet` riceve due metodi, `label` e `status`.

1. Il metodo di ogni ruolo usa un attributo, `name` o `age`. La classe `Pet` dà questi attributi.

{% include nav.html %}
