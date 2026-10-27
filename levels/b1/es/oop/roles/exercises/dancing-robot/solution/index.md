---
title: 'Solución: Un robot que baila'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
role Dancing {
    method dance {
        'spinning around';
    }
}

class Robot {
    method speak {
        'beep';
    }
}

my $plain   = Robot.new;
my $dancing = Robot.new but Dancing;

say $plain.speak;
say $dancing.speak;
say $dancing.dance;
```

🦋 Puedes encontrar el código fuente en el archivo [dancing-robot.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/dancing-robot.raku).

## Salida

```
beep
beep
spinning around
```

## Comentarios

1. A diferencia de los ejemplos anteriores, `Dancing` no sustituye un método existente. En cambio, trae un método `dance` completamente nuevo, del que `Robot` no sabe nada.

1. `Robot.new but Dancing` mezcla el rol en un único objeto en tiempo de ejecución. Así que `$dancing` sabe tanto `speak` (de la clase) como `dance` (del rol). El simple `$plain` solo aprendió `speak`.

1. La capacidad extra pertenece a ese objeto concreto, no a la clase `Robot`. Una llamada a `$plain.dance` sería un error, porque `$plain` nunca recibió el rol.

{% include nav.html %}
