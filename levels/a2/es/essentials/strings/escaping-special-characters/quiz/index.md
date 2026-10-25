---
title: 'Quiz: Una barra invertida en la salida'
---

{% include menu.html %}

Mira estas cadenas. Imagina que las imprimes. ¿Qué salidas tienen exactamente una barra invertida `\`? Marca esas cadenas.

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

Mira primero las comillas. Son lo más importante aquí. Las comillas deciden qué pasa con los caracteres después de una `\`.

{% include nav.html %}
