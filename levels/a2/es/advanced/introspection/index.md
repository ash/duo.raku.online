---
title: Introspección de contenedores
---

{% include menu.html %}

La _introspección_ significa que preguntas a un valor o a un contenedor sobre sí mismo. Puedes preguntar por su tipo. Puedes preguntar por el contenedor que hay detrás. También puedes preguntar cómo Raku lo hace funcionar por dentro. Ya conoces una herramienta de introspección, `.^name`. Imprime el tipo de un valor.

Raku tiene un pequeño grupo de estas herramientas. Sus nombres están en mayúsculas: `WHAT`, `VAR`, `WHO` y `HOW`. A veces la gente las llama _pseudo-métodos_. Parecen métodos. Pero no son métodos normales. El compilador les da un significado especial. Esta sección mira cada una de ellas.

Aquí tienes un recordatorio sobre `.^name`. El contenedor de este código no tiene un tipo fijo. Guardamos diferentes valores en él. `.^name` muestra cómo cambia el tipo:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Al principio, el contenedor es `Any`. Después, muestra el tipo de su valor actual.

{% include nav.html %}
