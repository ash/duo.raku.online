---
title: Valores predeterminados
translations_gpt:
---

{% include menu.html %}

A veces creas una variable escalar. Pero todavía no le asignas un valor. Aun así, el contenedor guarda un valor. Es su valor por defecto. El valor por defecto depende del tipo de la variable.

Este programa no usa Raku de la mejor forma. Pero muestra la idea:

```raku
my $int;
say $int + 5;
```

La salida tiene `5`. Quizás esperabas esto. Quizás pensaste que el valor por defecto de `$int` es `0`. Pero el programa también imprime una advertencia:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Hay dos formas de quitar esta duda. Puedes asignar un valor directamente:

```raku
my $int = 0;
say $int + 5; # 5
```

O puedes dar un valor por defecto con el trait `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

El valor por defecto no tiene que ser cero. Puede ser cualquier valor bueno para ti. Por ejemplo:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
