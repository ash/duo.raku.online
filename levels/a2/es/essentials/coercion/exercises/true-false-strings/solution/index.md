---
title: 'Solution: Cadenas Verdaderas y Falsas'
---

{% include menu.html %}

Este ejercicio es como [el anterior](../../true-false-numbers). Pero esta vez, la tarea es un poco más difícil. Aquí, más cadenas pueden parecer `False`. Vamos a verlas.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

De todas estas cadenas, solo la cadena vacía se vuelve `False`. Todas las demás cadenas se vuelven `True`. Incluso una cadena con solo espacios se vuelve `True`. Una cadena con el carácter `0` también es `True`.

🦋 Puedes encontrar el programa completo con el ejemplo anterior en el archivo [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
