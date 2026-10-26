---
title: Tipos de datos y contenedores escalares
translations_gpt:
---

{% include menu.html %}

Veamos un programa. Usa la misma variable para diferentes tipos de datos. Usamos `dd` para ver los datos en cada paso. Este ejemplo solo muestra cómo funcionan las cosas. No es una buena forma de escribir programas.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Cada llamada a `dd` muestra el valor actual de `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

Al principio, la variable está vacía. `dd` muestra su valor como `Any`. Es el valor base indefinido. Todo contenedor sin tipo empieza con él. Después de las asignaciones, `dd` muestra el entero. Luego muestra la cadena.

Observa que aquí `dd` no imprime un tipo antes del nombre. Un contenedor sin tipo no tiene un tipo fijo. Por eso `dd` muestra solo el valor. [Un contenedor con un tipo declarado](/es/advanced/scalar-containers/type-constraints) funciona de otra manera. Verás esto en el siguiente tema.

{% include nav.html %}
