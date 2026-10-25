---
title: Asignación de un valor
---

{% include menu.html %}

Para poner un nuevo valor en un contenedor escalar, usa el operador `=`.

```raku
my $name;
$name = 'Anna';
```

Ahora puedes usar la variable, por ejemplo, para imprimirla:

```raku
say $name;
```

## Varias variables a la vez

Puedes asignar valores a varias variables al mismo tiempo. Por ejemplo, así asignas dos escalares en una sola instrucción:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Observa que no puedes quitar los paréntesis del lado izquierdo. Pero también puedes ponerlos en el lado derecho, para que los dos lados coincidan:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
