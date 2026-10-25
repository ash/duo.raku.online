---
title: Uso de `unit sub`
---

{% include menu.html %}

La construcción `unit sub` es muy práctica. ¡Hace que el resto del archivo sea el cuerpo de la función! Con `MAIN`, te permite quitar las llaves alrededor de casi todo el archivo. Tampoco necesitas la indentación extra.

El siguiente programa de ejemplo muestra cómo usar `unit sub`.

```raku
unit sub MAIN($a, $b);

my $sum = $a + $b;
say "La suma de $a y $b es $sum.";
```

En este archivo, `MAIN` es la única función. Si pasa lo mismo en tu programa, piensa en usar `unit sub MAIN` como se muestra arriba.

{% include nav.html %}
