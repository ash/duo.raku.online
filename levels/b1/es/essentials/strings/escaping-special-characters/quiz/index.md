---
title: 'Quiz: Una barra invertida en la salida'
---

{% include menu.html %}

Si imprimes estas cadenas, ¿cuáles muestran exactamente una barra invertida `\`? Márcalas.

{:.quiz}
0 | &quot;Level\n\t2&quot;
0 | &quot;Level\n\nTwo&quot;
1 | &apos;Storey\nTwo&apos;
1 | &apos;Tab is \t&apos;
0 | &quot;Using a tab\there&quot;
1 | &quot;//\\\\&quot; | La salida es `//\`
1 | &apos;//\\\\&apos; | Una barra invertida escapa a la otra aquí: `//\`.
1 | &apos;\&quot;&apos; | No hay escape aquí, la cadena aparece tal cual: `\"`.

{% include quiz.html %}

## Comentarios

Lo más importante que hay que mirar aquí son las comillas. Deciden cómo se escapan los caracteres después de una `\`.

{% include nav.html %}
