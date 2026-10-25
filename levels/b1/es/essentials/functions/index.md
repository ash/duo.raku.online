---
title: Crear y llamar funciones
---

{% include menu.html %}

Ahora estás en la última sección de la primera parte del curso. Después de ella, sabrás lo suficiente para escribir casi _cualquier_ programa en Raku. El tema de esta sección son las _funciones_. También se llaman _subrutinas_, o simplemente _rutinas_.

Una función es una parte del código con nombre que puedes usar muchas veces. Puedes _llamar_ a una función desde diferentes lugares del programa.

## Creación de una función

Para crear una función, escribe la palabra clave `sub` y después el nombre de la función. El cuerpo de la función va dentro de un par de llaves.

```raku
sub greet {
    say '¡Hola, Mundo!';
}
```

## Uso de una función

Para usar la función, simplemente escribe su nombre donde quieres llamarla. En Raku, la definición de la función puede estar antes de la llamada o después de ella.

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

Ahora vamos a ver más detalles sobre cómo crear y usar funciones.

{% include nav.html %}
