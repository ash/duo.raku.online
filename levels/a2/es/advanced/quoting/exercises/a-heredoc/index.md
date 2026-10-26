---
title: Un heredoc
---

{% include menu.html %}

## Problema

Escribe una carta para confirmar un pedido. Usa un heredoc que *interpola*. Construye la carta con unas pocas variables. Las variables son un cliente `$name`, un artículo `$item`, un precio `$price` y una cantidad `$count`. El precio es por un artículo. El heredoc pone los valores de las variables. *También* calcula el total. Para esto, tiene un bloque `{ … }` dentro del texto (`$count * $price`).

Indenta el cuerpo del heredoc. Debe quedar alineado con el código de alrededor. Pon el terminador de cierre con la misma indentación que el texto. Así la salida no tiene indentación. Imprime el resultado.

## Ejemplo

Toma `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` y `$count = 3`. Entonces el programa imprime esto. No hay espacios al principio de las líneas:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
