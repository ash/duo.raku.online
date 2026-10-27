---
title: 'Risinājums: Pievienojiet metodi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Atrodiet programmu failā [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Izvade

```
Rex says woof
```

## Komentāri

1. `.^add_method` pievieno jaunu metodi klases metaobjektam. Tā to dara, kamēr programma darbojas. Jauno metodi jūs dodat kā anonīmu `method { … }`. Tas nozīmē, ka metodei nav sava nosaukuma.

1. Jaunā metode ir īsta klases metode. Tāpēc tās iekšā `$.name` iegūst objekta atribūtu `name`. Metode klases ķermenī dara to pašu. Pēc `.^add_method` izsaukuma jūs varat izsaukt `.speak` uz katra `Dog`.

{% include nav.html %}
