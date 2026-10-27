---
title: 'Solución: Nombre el error'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Puedes encontrar el código fuente en el archivo [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Salida

```
X::AdHoc
sub failed
```

## Comentarios

1. El `die` ocurre dentro de `risky`. Pero la excepción sube hasta quien llama. Quien llama es el código que llamó a `risky`. Aquí, es el bloque. El `CATCH` de este bloque maneja la excepción. Así funciona normalmente el manejo de errores. El código que maneja un error es su manejador. El error y su manejador pueden estar en rutinas distintas.

1. Un simple `die` con una cadena crea una excepción `X::AdHoc`. `.^name` muestra este tipo. `.message` devuelve el texto que le dimos a `die`.

{% include nav.html %}
