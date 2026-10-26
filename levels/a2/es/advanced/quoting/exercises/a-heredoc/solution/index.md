---
title: 'Solution: Un heredoc'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Encuentra el programa en el archivo [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Salida

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Comentarios

1. El heredoc empieza con `qq:to`, no con `q:to`. Por eso interpola. Funciona como una cadena `qq`. Rellena los escalares `$name`, `$count` y `$item`. *También* ejecuta código dentro del texto. El bloque `{$count * $price}` calcula `3 * 25`. Así que el total `75` aparece en el texto.

1. Mira las comillas dobles en `"$item"`. Aquí, son solo caracteres normales. En un heredoc, las comillas no son delimitadores. Por eso no necesitan barra invertida. Raku imprime las comillas tal como están. Pero aun así interpola `$item`.

1. El cuerpo y el `END` de cierre tienen los dos cuatro espacios delante. Raku quita la indentación del terminador de cada línea. Por eso estos cuatro espacios nunca llegan a la cadena. La salida empieza en el borde izquierdo.

1. El heredoc ya termina con un salto de línea. Por eso el programa usa `print`, no `say`. `say` añade otro salto de línea. Eso da una línea vacía de más.

{% include nav.html %}
