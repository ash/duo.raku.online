---
title: Tipos de datos y contenedores escalares
translations_gpt:
---

{% include menu.html %}

Aquí tienes un programa que usa una variable para diferentes tipos de datos. Usamos `dd` para ver qué hay en el contenedor en cada paso. Este ejemplo solo muestra la idea. No recomendamos este estilo de programación.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Cada llamada a `dd` muestra lo que hay en la variable `$value` en ese momento:

```
$value = Any
$value = 42
$value = "forty-two"
```

Al principio, la variable está vacía, y `dd` muestra su valor como `Any`. Es el valor base indefinido con el que empieza todo contenedor sin tipo. Después de las asignaciones, `dd` muestra el entero y luego la cadena.

Observa que aquí `dd` no imprime un tipo antes del nombre. Un contenedor sin tipo no está atado a ningún tipo, así que solo se muestra el valor. El siguiente tema muestra que [un contenedor con un tipo declarado](/es/advanced/scalar-containers/type-constraints) se comporta de otra manera.

{% include nav.html %}
