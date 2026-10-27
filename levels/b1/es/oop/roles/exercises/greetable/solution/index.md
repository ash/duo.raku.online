---
title: 'Solución: Una caja con tamaño'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El rol aporta el método `describe`, y la clase lo compone con `does Sized`. El método necesita `self.size`, que aporta la clase `Box`. Así que el rol y la clase encajan y forman el objeto completo.

1. `Box` asume el rol, así que el smartmatch `$b ~~ Sized` es `True`. Para Raku, un objeto tiene todos los roles que compone su clase. Esto te ayuda a comprobar qué sabe hacer un objeto antes de llamar a un método del rol.

{% include nav.html %}
