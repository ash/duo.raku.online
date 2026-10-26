---
title: Quiz — Restricciones de tipo
translations_gpt:
---

{% include menu.html %}

Aquí tienes la declaración de un contenedor:

```raku
my Int $int;
```

¿Qué asignación de abajo da un error en tiempo de compilación?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
