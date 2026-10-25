---
title: 'Quiz: Una barra rovesciata nell''output'
---

{% include menu.html %}

Guarda queste stringhe. Immagina di stamparle. Quali output hanno esattamente una barra rovesciata `\`? Segna queste stringhe.

{:.quiz}
0 | &quot;Level\n\t2&quot;
0 | &quot;Level\n\nTwo&quot;
1 | &apos;Storey\nTwo&apos;
1 | &apos;Tab is \t&apos;
0 | &quot;Using a tab\there&quot;
1 | &quot;//\\\\&quot; | L'output è `//\`
1 | &apos;//\\\\&apos; | Una barra rovesciata ne esce un'altra qui: `//\`.
1 | &apos;\&quot;&apos; | Nessuna escape qui, la stringa appare così com'è: `\"`.

{% include quiz.html %}

## Commenti

Guarda prima le virgolette. Qui sono la cosa più importante. Le virgolette decidono cosa succede ai caratteri dopo un `\`.

{% include nav.html %}
