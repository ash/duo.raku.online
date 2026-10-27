---
title: 'Oplossing: Voeg een methode toe'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

1. `.^add_method` voegt een nieuwe methode toe aan het metaobject van de klasse. Dat gebeurt terwijl het programma draait. Je geeft de nieuwe methode als een anonieme `method { … }`. Dat betekent dat de methode geen eigen naam heeft.

1. De nieuwe methode is een echte methode van de klasse. Daarom geeft `$.name` binnen de methode het attribuut `name` van het object. Een methode in de body van de klasse doet hetzelfde. Na de aanroep van `.^add_method` kun je `.speak` aanroepen op elke `Dog`.

{% include nav.html %}
