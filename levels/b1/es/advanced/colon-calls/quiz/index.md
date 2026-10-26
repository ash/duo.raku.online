---
title: Quiz — La llamada con dos puntos
---

{% include menu.html %}

Que imprime el siguiente programa?

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

Los dos puntos toman *todo* el resto de la sentencia como lista de argumentos. Así que `substr: 0, 3` es lo mismo que `substr(0, 3)`, y se pasan los dos argumentos. Empieza en el índice `0` y toma `3` caracteres, lo que da `pro`.

</div>

{% include nav.html %}
