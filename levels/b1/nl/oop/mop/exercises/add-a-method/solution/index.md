---
title: 'Oplossing: Voeg een methode toe'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
class Dog {
    has $.name;
}

Dog.^add_method('speak', method { $.name ~ ' says woof' });

say Dog.new(name => 'Rex').speak;
```

🦋 Je kunt de broncode vinden in het bestand [add-a-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/add-a-method.raku).

## Uitvoer

```
Rex says woof
```

## Opmerkingen

1. `.^add_method` voegt tijdens het draaien een nieuwe methode toe aan het metaobject van de klasse. Je geeft de methode als een anonieme `method { … }`.

1. De toegevoegde methode is een echte methode van de klasse. Daarom bereikt `$.name` binnen de methode het attribuut `name` van het object. Een methode die in de klassebody geschreven is, zou hetzelfde doen. Na de aanroep reageert elke `Dog` op `.speak`.

{% include nav.html %}
