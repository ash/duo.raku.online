---
title: 'Solution: Un heredoc'
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El heredoc empieza con `qq:to` en lugar de `q:to`, así que interpola. Como una cadena `qq`, rellena los escalares `$name`, `$count` y `$item`. *También* ejecuta código dentro del texto: el bloque `{$count * $price}` calcula `3 * 25`. Así que el total, `75`, aparece directamente en el texto.

1. Las comillas dobles alrededor de `"$item"` son solo caracteres normales aquí. Dentro de un heredoc, no hay ningún delimitador que haya que escapar. Así que las comillas se imprimen tal como están escritas, mientras que `$item` se sigue interpolando.

1. El cuerpo y el `END` de cierre tienen la misma indentación de cuatro espacios. La indentación del terminador se elimina de cada línea. Así que esos cuatro espacios nunca llegan a la cadena. La salida empieza en el borde izquierdo.

1. El heredoc ya termina con un salto de línea. Por eso el código usa `print` en lugar de `say`. Con `say`, tendrías un segundo salto de línea y una línea vacía de más.

{% include nav.html %}
