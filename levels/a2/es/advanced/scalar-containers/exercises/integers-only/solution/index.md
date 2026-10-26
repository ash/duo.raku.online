---
title: 'Solution: Solo enteros'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Encuentra el programa en el archivo [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Salida

```
250
(Int)
```

## Comentarios

1. La restricción de tipo `Int` en `my Int $cars` es una regla para el contenedor. El contenedor no acepta valores que no sean enteros. No puedes asignar `250.7` directamente. Este valor es un `Rat`. Raku da un error en tiempo de compilación, antes de ejecutar el programa.

1. El programa llama a `.Int` sobre el valor racional `250.7`. Esto lo convierte en el entero `250`. El método solo quita la parte después del punto decimal. El nuevo valor cabe en el contenedor. Observa que esto no es lo mismo que redondear.

1. El pseudo-método `.WHAT` muestra el tipo del valor guardado. Es `Int`.

{% include nav.html %}
