---
title: 'Solución: Un atributo heredado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `Bike` y `Car` heredan las dos de `Vehicle` el atributo `wheels` y su accesor. Ninguna de las dos vuelve a declarar el atributo desde cero. Solo dan al atributo heredado un valor por defecto: `2` para `Bike` y `4` para `Car`.

1. El valor por defecto está incorporado en cada clase. Así que puedes crear los objetos con un simple `Bike.new` y `Car.new`. Después el accesor heredado devuelve el número correcto de ruedas.

1. Aun así, puedes pasar tú mismo el valor, por ejemplo `Car.new(wheels => 3)`. Un argumento así anula el valor por defecto. Pero lo más probable es que una bicicleta o un coche ya tenga su número habitual de ruedas. Así que los valores por defecto mantienen simple el caso común. Pero todavía queda sitio para una excepción poco frecuente.

{% include nav.html %}
