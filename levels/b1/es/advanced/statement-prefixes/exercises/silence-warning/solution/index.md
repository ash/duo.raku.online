---
title: 'Solution: Silenciar una advertencia'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 Puedes encontrar el código fuente en el archivo [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Salida

```
Hello, !
```

## Comentarios

1. Poner el `$name` indefinido dentro de la cadena normalmente causa una advertencia de «uso de valor no inicializado». Con `quietly` alrededor de la expresión, la advertencia queda oculta, así que solo se imprime el saludo.

1. Como `do`, `quietly` devuelve el valor de su bloque. Así que la cadena terminada se guarda en `$greeting`. El nombre que falta deja un hueco vacío en ella.

1. `quietly` solo oculta la advertencia, y el valor sigue indefinido. Si en cambio quieres *ocuparte* del valor que falta, da un valor predeterminado. Usa para esto el operador definido-o `//`. `$name // 'friend'` da `'friend'` cuando `$name` está indefinido. Así que `"Hello, " ~ ($name // 'friend') ~ "!"` imprime `Hello, friend!` sin ninguna advertencia.

{% include nav.html %}
