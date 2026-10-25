---
title: 'Solution: Cadenas Verdaderas y Falsas'
---

{% include menu.html %}

Este ejercicio es parecido [al anterior](../../true-false-numbers). Pero esta vez, la tarea es un poco más difícil. Hay más cadenas ‘sospechosas’, que podrían tratarse como `False`. Vamos a explorarlas.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

De todas estas cadenas, solo la cadena vacía se convierte en `False`. Todas las demás cadenas se vuelven `True`, aunque contengan solo espacios o el carácter `0`.

🦋 Puedes encontrar el programa completo con el ejemplo anterior en el archivo [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
