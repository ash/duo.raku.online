---
title: Atributos privados
translations_gpt:
---

{% include menu.html %}

En la [sección sobre atributos](/es/oop/attributes), declaramos cada atributo con `$.`. Esto crea un accesor público. Si en cambio declaras un atributo con `$!`, es _privado_. No tiene accesor, y no puedes verlo desde fuera del objeto. Solo los propios métodos de la clase pueden llegar a él. Allí, lo escribes como `$!name`.

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

El secreto `$!code` se guarda dentro del objeto, pero nunca se muestra fuera. No hay accesor `.code`. Así que solo puedes trabajar con él a través del método `unlocks`. La clase decide ofrecer este método. Si intentas leer `$safe.code` o `$safe!code`, simplemente falla.

Los atributos privados son útiles para detalles internos. El resto del programa no debería trabajar con estos detalles directamente.

{% include nav.html %}
