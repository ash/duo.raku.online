---
title: 'Quiz: Una barra rovesciata nell''output'
---

{% include menu.html %}

Se stampi queste stringhe, quali mostrano esattamente una barra rovesciata `\`? Selezionale.

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

La cosa più importante da guardare qui sono le virgolette. Decidono come si fa l'escape dei caratteri dopo un `\`.

{% include nav.html %}
