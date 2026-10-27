---
title: 'Soluzione: Aggiungete un metodo'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Trova il programma nel file [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Output

```
Rex says woof
```

## Commenti

1. `.^add_method` aggiunge a runtime un nuovo metodo al metaoggetto della classe. Dai il metodo come `method { … }` anonimo.

1. Il metodo aggiunto è un vero metodo della classe. Quindi al suo interno `$.name` raggiunge l'attributo `name` dell'oggetto. Un metodo scritto nel corpo della classe farebbe lo stesso. Dopo la chiamata, ogni `Dog` risponde a `.speak`.

{% include nav.html %}
