---
title: 'Solvo: Dorlotbesto kun nomo kaj aĝo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Eligo

```
I am Rex
3 years
```

## Komentoj

1. `Pet` kunmetas du rolojn samtempe. Tio signifas, ke ĝi prenas ambaŭ rolojn en la klason. Do `Pet` ricevas du metodojn, `label` kaj `status`.

1. La metodo de ĉiu rolo uzas atributon, `name` aŭ `age`. La klaso `Pet` donas ĉi tiujn atributojn.

{% include nav.html %}
