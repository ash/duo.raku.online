---
title: 'Quiz: Een backslash in de uitvoer'
---

{% include menu.html %}

Kijk naar deze strings. Stel je voor dat je ze afdrukt. Welke output heeft precies één backslash `\`? Markeer die strings.

{:.quiz}
0 | &quot;Level\n\t2&quot;
0 | &quot;Level\n\nTwo&quot;
1 | &apos;Storey\nTwo&apos;
1 | &apos;Tab is \t&apos;
0 | &quot;Using a tab\there&quot;
1 | &quot;//\\\\&quot; | De output is `//\`
1 | &apos;//\\\\&apos; | Eén backslash ontsnapt aan de andere hier: `//\`.
1 | &apos;\&quot;&apos; | Geen ontsnapping hier, de string verschijnt zoals hij is: `\"`.

{% include quiz.html %}

## Opmerkingen

Kijk eerst naar de aanhalingstekens. Die zijn hier het belangrijkst. De aanhalingstekens bepalen wat er gebeurt met de tekens na een `\`.

{% include nav.html %}
