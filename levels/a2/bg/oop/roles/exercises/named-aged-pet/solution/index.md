---
title: 'Решение: Домашен любимец с име и възраст'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

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

🦋 Намерете програмата във файла [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Изход

```
I am Rex
3 years
```

## Коментари

1. `Pet` компонира две роли едновременно. Това значи, че взема двете роли в класа. Затова `Pet` получава два метода, `label` и `status`.

1. Методът на всяка роля използва атрибут, `name` или `age`. Класът `Pet` дава тези атрибути.

{% include nav.html %}
