---
title: 'Solución: Un atributo heredado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

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

🦋 Puedes encontrar el código fuente en el archivo [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Salida

```
2
4
```

## Comentarios

1. `Bike` y `Car` heredan las dos el atributo `wheels` de `Vehicle`. También heredan su accesor. No crean un atributo nuevo. Solo dan al atributo heredado un valor por defecto. Para `Bike`, es `2`. Para `Car`, es `4`.

1. Cada clase tiene dentro su valor por defecto. Así que puedes crear los objetos solo con `Bike.new` y `Car.new`. Después el accesor heredado devuelve el número correcto de ruedas.

1. Aun así, puedes pasar tú mismo un valor, por ejemplo, `Car.new(wheels => 3)`. Entonces este valor sustituye al valor por defecto. Pero las bicicletas y los coches suelen tener su número normal de ruedas. Así que los valores por defecto hacen simple el caso normal. Y a veces todavía puedes hacer una excepción.

{% include nav.html %}
