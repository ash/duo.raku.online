---
title: 'Soluzione: Un attributo ereditato'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Vehicle {
    has $.wheels;
}

class Bike is Vehicle {
    has $.wheels = 2;
}

class Car is Vehicle {
    has $.wheels = 4;
}

say Bike.new.wheels;
say Car.new.wheels;
```

🦋 Trova il programma nel file [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Output

```
2
4
```

## Commenti

1. `Bike` e `Car` ereditano tutte e due l'attributo `wheels` da `Vehicle`. Ereditano anche il suo accessore. Non creano un nuovo attributo. Danno solo un valore predefinito all'attributo ereditato. Per `Bike` è `2`. Per `Car` è `4`.

1. Ogni classe ha dentro di sé il suo valore predefinito. Quindi puoi creare gli oggetti solo con `Bike.new` e `Car.new`. Poi l'accessore ereditato restituisce il numero giusto di ruote.

1. Puoi comunque passare tu un valore, per esempio `Car.new(wheels => 3)`. Allora questo valore sostituisce quello predefinito. Ma bici e auto di solito hanno il loro numero normale di ruote. Quindi i valori predefiniti rendono semplice il caso normale. E a volte puoi ancora fare un'eccezione.

{% include nav.html %}
