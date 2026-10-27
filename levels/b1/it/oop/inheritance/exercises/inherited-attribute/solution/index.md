---
title: 'Soluzione: Un attributo ereditato'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `Bike` e `Car` ereditano entrambe da `Vehicle` l'attributo `wheels` e il suo accessore. Nessuna delle due dichiara di nuovo l'attributo da zero. Danno solo un valore predefinito all'attributo ereditato: `2` per `Bike` e `4` per `Car`.

1. Il valore predefinito è incorporato in ogni classe. Quindi puoi creare gli oggetti con un semplice `Bike.new` e `Car.new`. Poi l'accessore ereditato restituisce il numero giusto di ruote.

1. Puoi comunque passare tu il valore, per esempio `Car.new(wheels => 3)`. Un argomento così sostituisce il valore predefinito. Ma una bici o un'auto molto probabilmente ha già il suo numero abituale di ruote. Quindi i valori predefiniti tengono semplice il caso comune. Ma resta spazio per una rara eccezione.

{% include nav.html %}
