---
title: 'Решение: Питомец с именем и возрастом'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

🦋 Исходный код можно найти в файле [named-aged-pet.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/named-aged-pet.raku).

## Вывод

```
I am Rex
3 years
```

## Комментарии

1. `Pet` включает сразу две роли. Это значит, что он берёт обе роли в класс. Поэтому `Pet` получает два метода, `label` и `status`.

1. Метод каждой роли использует атрибут, `name` или `age`. Эти атрибуты даёт класс `Pet`.

{% include nav.html %}
