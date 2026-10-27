---
title: 'Soluzione: Aggiungete un metodo'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `.^add_method` aggiunge un nuovo metodo al metaoggetto della classe. Lo fa mentre il programma gira. Dai il nuovo metodo come `method { … }` anonimo. Questo vuol dire che il metodo non ha un nome suo.

1. Il nuovo metodo è un vero metodo della classe. Quindi al suo interno `$.name` prende l'attributo `name` dell'oggetto. Un metodo nel corpo della classe fa lo stesso. Dopo la chiamata a `.^add_method`, puoi chiamare `.speak` su ogni `Dog`.

{% include nav.html %}
