---
title: 'Risinājums: Pievienojiet metodi'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `.^add_method` izpildes laikā pievieno jaunu metodi klases metaobjektam. Metodi jūs dodat kā anonīmu `method { … }`.

1. Pievienotā metode ir īsta klases metode. Tāpēc tās iekšā `$.name` sasniedz objekta atribūtu `name`. Klases ķermenī uzrakstīta metode darītu to pašu. Pēc izsaukuma katrs `Dog` reaģē uz `.speak`.

{% include nav.html %}
