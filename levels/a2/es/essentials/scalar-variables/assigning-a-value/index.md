---
title: Asignación de un valor
---

{% include menu.html %}

El operador `=` pone un nuevo valor en un contenedor escalar.

```raku
my $name;
$name = 'Anna';
```

Ahora puedes usar la variable. Por ejemplo, puedes imprimirla:

```raku
say $name;
```

## Dos o más variables a la vez

Puedes asignar valores a varias variables a la vez. Por ejemplo, aquí una instrucción asigna valores a dos escalares:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Debes escribir los paréntesis en el lado izquierdo. No puedes quitarlos. En el lado derecho, también puedes ponerlos. Entonces los dos lados se ven iguales:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
