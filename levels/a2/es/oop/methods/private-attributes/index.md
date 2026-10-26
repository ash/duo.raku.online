---
title: Atributos privados
translations_gpt:
---

{% include menu.html %}

En la [sección sobre atributos](/es/oop/attributes), cada atributo tenía `$.` en su nombre. `$.` crea un accesor público. Cualquiera fuera del objeto puede usarlo. Pero también puedes escribir `$!` en su lugar. Entonces el atributo es _privado_. No tiene accesor. El código de fuera del objeto no puede verlo. Solo los métodos de la clase pueden usarlo. Allí, lo escribes como `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

El secreto `$!code` está dentro del objeto. Pero nadie de fuera puede verlo. No hay ningún accesor `.code`. La única forma de usar el código es el método `unlocks`. La clase te da este método a propósito. Leer `$safe.code` o `$safe!code` simplemente falla.

Los atributos privados son buenos para detalles dentro del objeto. El resto del programa no debe tocarlos directamente.

{% include nav.html %}
