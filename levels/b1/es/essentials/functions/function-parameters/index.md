---
title: Parámetros de funciones
---

{% include menu.html %}

Ahora es hora de pasar algunos datos a una función. Una función puede tomar parámetros, que escribes entre paréntesis justo después de su nombre.

```raku
sub greet($name) {
    say "¡Hola, $name!";
}
```

Ahora puedes usar la función y pasarle diferentes argumentos:

```raku
greet('Alla');
greet('Karl');
```

Ahora las dos llamadas a la misma función dan resultados diferentes:

```console
$ raku t.raku
¡Hola, Alla!
¡Hola, Karl!
```

%%tipblock

## Parámetro o argumento

La gente a menudo usa estos dos términos como si significaran lo mismo. Los dos se refieren a 'lo mismo', pero desde diferentes puntos de vista.

* Un parámetro es lo que la función espera.
* Un argumento es lo que le pasas.

En el ejemplo de arriba, `$name` es el parámetro de la función. Sus argumentos son `'Alla'` y `'Karl'`.

%%/tipblock

## Más parámetros

Una función puede tomar más de un parámetro. En este caso, escríbelos todos con comas entre ellos:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Sin parámetros

Está bien que una función no tome ningún parámetro. Entonces puedes agregar un par de paréntesis vacío u omitirlos por completo. Los omitimos al [principio de esta sección](../).

```raku
sub greet() {
    say '¡Hola, Mundo!';
}

greet();
```

## Firma

La lista de parámetros de una función se llama _firma_.

{% include nav.html %}
