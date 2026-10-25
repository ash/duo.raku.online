---
title: Uso de `unit sub`
---

{% include menu.html %}

¡Con `unit sub`, el resto del archivo se convierte en el cuerpo de la función! Esto es muy útil con `MAIN`. Sin `unit sub`, las llaves rodean casi todo el archivo. Con `unit sub`, no necesitas estas llaves. Además, las líneas no necesitan espacios extra al principio.

Aquí tienes un programa de ejemplo con `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "La suma de $a y $b es $sum.";
```

En este archivo, `MAIN` es la única función. ¿Pasa lo mismo en tu programa? Entonces prueba a usar `unit sub MAIN`, como en el ejemplo de arriba.

{% include nav.html %}
