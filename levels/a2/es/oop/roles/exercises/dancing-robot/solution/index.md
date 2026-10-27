---
title: 'Solución: Un robot que baila'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Esto no es como los ejemplos anteriores. `Dancing` no sustituye un método que ya existe. Trae un método completamente nuevo, `dance`. La clase `Robot` no sabe nada de este método.

1. `Robot.new but Dancing` mezcla el rol en un solo objeto. Esto pasa mientras el programa se ejecuta. Así que `$dancing` puede hacer dos cosas. Sabe hacer `speak`, de la clase. También sabe hacer `dance`, del rol. El simple `$plain` solo sabe hacer `speak`.

1. La capacidad nueva pertenece solo a este objeto. No pertenece a la clase `Robot`. Así que `$plain.dance` da un error. `$plain` nunca recibió el rol.

{% include nav.html %}
