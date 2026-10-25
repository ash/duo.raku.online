---
title: Quiz 1 — Citar arrays de cadenas
---

{% include menu.html %}

Mira el elemento con índice `1` en cada arreglo. ¿Qué arreglos tienen la letra `B` allí? En otras palabras, ¿dónde imprime `say @array[1]` la letra `B`?

{:.quiz}
1 | my @array = &lt;A B C&gt;;
1 | my @array = &apos;A&apos;, &apos;B&apos;, &apos;C&apos;;
0 | my @array = <&apos;A&apos;, &apos;B&apos;, &apos;C&apos;>; | Los elementos de este arreglo contienen tanto las comillas como incluso la coma: `'B',`.
1 | my @array = [&apos;A&apos;, &apos;B&apos;, &apos;C&apos;];
1 | my @array = (&apos;A&apos;, &apos;B&apos;, &apos;C&apos;);

{% include quiz.html %}

{% include nav.html %}
