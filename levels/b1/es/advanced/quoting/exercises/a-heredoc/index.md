---
title: Un heredoc
---

{% include menu.html %}

## Problema

Usa un heredoc *con interpolación* para construir una carta que confirme un pedido. Usa unas pocas variables: un cliente `$name`, un artículo `$item`, un precio `$price` y una cantidad `$count`. El precio es por un artículo. El heredoc debe interpolar las variables. *También* debe calcular el total dentro del texto, con un bloque incrustado `{ … }` (`$count * $price`).

Indenta el cuerpo del heredoc para alinearlo con el código de alrededor. Alinea el terminador de cierre con el texto. Así la indentación no aparece en la salida. Imprime el resultado.

## Ejemplo

Toma `$name = 'Anna'`, `$item = 'Raku Book'`, `$price = 25` y `$count = 3`. Entonces el programa imprime lo siguiente, sin espacios al principio:

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
