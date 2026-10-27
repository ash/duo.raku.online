---
title: 'Solución: Una caja con tamaño'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
role Sized {
    method describe {
        'size is ' ~ self.size;
    }
}

class Box does Sized {
    has $.size;
}

my $b = Box.new(size => 10);
say $b.describe;
say $b ~~ Sized;
```

🦋 Puedes encontrar el código fuente en el archivo [greetable.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/roles/greetable.raku).

## Salida

```
size is 10
True
```

## Comentarios

1. El rol da el método `describe`. La clase compone el rol con `does Sized`. Esto significa que mete el rol dentro de sí misma. El método necesita `self.size`. La clase `Box` da el `size`. El rol y la clase encajan. Juntos forman el objeto completo.

1. `Box` asume el rol. Así que el smartmatch `$b ~~ Sized` es `True`. Un objeto tiene todos los roles que compone su clase. Raku lo sabe. Esto es útil. Puedes comprobar qué sabe hacer un objeto. Hazlo antes de llamar a un método de un rol.

{% include nav.html %}
