---
title: Crear y llamar funciones
---

{% include menu.html %}

La primera parte del curso termina con esta sección. Después, puedes escribir casi _cualquier_ programa en Raku. Esta sección trata de las _funciones_. Las funciones también tienen otros nombres: _subrutinas_, o solo _rutinas_.

Una función es una parte del código con su propio nombre. Puedes usarla muchas veces. Para usar una función, la _llamas_. Puedes llamarla desde diferentes lugares del programa.

## Creación de una función

Para crear una función, escribe la palabra clave `sub`. Después, escribe el nombre de la función. Pon el cuerpo de la función entre llaves.

```raku
sub greet {
    say '¡Hola, Mundo!';
}
```

## Uso de una función

Para usar la función, solo escribe su nombre. Escríbelo donde quieres llamar a la función. En Raku, puedes crear la función antes de este lugar. También puedes crearla después de este lugar.

```raku
say 'Esto es lo que normalmente imprime el primer programa:';
greet;    

sub greet {
    say '¡Hola, Mundo!';
}
```

El programa imprime ambos mensajes:

```console
$ raku t.raku
Esto es lo que normalmente imprime el primer programa:
¡Hola, Mundo!
```

Ahora veamos más sobre cómo crear y usar funciones.

{% include nav.html %}
