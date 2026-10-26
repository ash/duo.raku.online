---
title: Quiz — La llamada con dos puntos
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

Los dos puntos toman *todo* el resto de la sentencia. Todo eso se convierte en la lista de argumentos. Así que `substr: 0, 3` es lo mismo que `substr(0, 3)`. Los dos argumentos van a `substr`. Empieza en el índice `0` y toma `3` caracteres. El resultado es `pro`.

</div>

{% include nav.html %}
