---
title: 'Solución: Nombre el error'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El `die` ocurre dentro de `risky`, pero la excepción sube hasta quien llama. El `CATCH` del bloque que llamó a `risky` la maneja. Así es como funciona normalmente el manejo de errores. El fallo y su manejador no tienen por qué estar en la misma rutina.

1. Un simple `die` con una cadena crea una excepción `X::AdHoc`, y `.^name` informa de este tipo. Después `.message` devuelve el texto que se le pasó a `die`.

{% include nav.html %}
