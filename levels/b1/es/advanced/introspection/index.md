---
title: Introspección de contenedores
---

{% include menu.html %}

La _introspección_ consiste en preguntar a un valor o a un contenedor sobre sí mismo. Puedes preguntar por su tipo, por el contenedor que hay detrás o por cómo funciona por dentro. Ya has usado una herramienta de introspección, `.^name`, que imprime el tipo de un valor.

Raku tiene una pequeña familia de estas herramientas, y sus nombres están en mayúsculas: `WHAT`, `VAR`, `WHO` y `HOW`. A veces se les llama _pseudo-métodos_. Esto es porque el compilador les da un significado especial. No los trata como métodos normales. Esta sección examina cada uno de ellos.

Como recordatorio, aquí tienes `.^name` otra vez. Este contenedor no tiene restricción de tipo, y guardamos diferentes valores en él. `.^name` muestra cómo cambia su tipo:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Al principio, el contenedor es `Any`. Luego muestra el tipo del valor que guarda en ese momento.

{% include nav.html %}
