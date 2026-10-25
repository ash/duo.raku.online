---
title: Parámetros de funciones
---

{% include menu.html %}

Ahora pasamos algunos datos a una función. Una función puede tomar parámetros. Escríbelos entre paréntesis justo después del nombre de la función.

```raku
sub greet($name) {
    say "¡Hola, $name!";
}
```

Ahora puedes usar la función. Puedes pasarle diferentes argumentos:

```raku
greet('Alla');
greet('Karl');
```

Llamamos a la misma función dos veces. Ahora los resultados son diferentes:

```console
$ raku t.raku
¡Hola, Alla!
¡Hola, Karl!
```

%%tipblock

## Parámetro o argumento

La gente a menudo usa estas dos palabras de la misma forma. Las dos palabras hablan de 'lo mismo'. Pero lo miran desde lados diferentes.

* Un parámetro es lo que la función espera recibir.
* Un argumento es lo que le pasas a la función.

En el ejemplo de arriba, `$name` es el parámetro de la función. `'Alla'` y `'Karl'` son sus argumentos.

%%/tipblock

## Más parámetros

Una función puede tomar más de un parámetro. Entonces pon comas entre ellos:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Sin parámetros

Una función también puede no tener parámetros. Entonces puedes escribir un par de paréntesis vacío. O puedes omitir los paréntesis. Hicimos esto al [principio de esta sección](../).

```raku
sub greet() {
    say '¡Hola, Mundo!';
}

greet();
```

## Firma

La lista de parámetros de una función es su _firma_.

{% include nav.html %}
