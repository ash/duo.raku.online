---
title: Valores predeterminados
translations_gpt:
---

{% include menu.html %}

A veces creas una variable escalar nueva sin asignarle nada en ese momento. Incluso entonces, el contenedor tiene un valor, su valor por defecto. El valor por defecto exacto depende del tipo de la variable.

El siguiente programa no es la mejor forma de usar Raku. Pero muestra la idea:

```raku
my $int;
say $int + 5;
```

La salida contiene `5`. Quizás lo esperabas, si pensabas que el valor por defecto de `$int` es `0`. Pero el programa también imprime una advertencia:

```
Use of uninitialized value $int of type Any in numeric context
  in block <unit> at t.raku line 2
5
```

Para dejar claro cuál es el valor, puedes asignarlo tú mismo:

```raku
my $int = 0;
say $int + 5; # 5
```

O puedes fijar un valor por defecto con el trait `is default`:

```raku
my $int is default(0);
say $int + 5; # 5
```

El valor por defecto no tiene que ser cero. Puede ser cualquier valor que te parezca una buena opción, por ejemplo:

```raku
my $int is default(1);
say $int + 5; # 6
```

{% include nav.html %}
