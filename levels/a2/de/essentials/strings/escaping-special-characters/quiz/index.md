---
title: 'Quiz: Ein Backslash in der Ausgabe'
---

{% include menu.html %}

Sehen Sie sich diese Zeichenketten an. Stellen Sie sich vor, Sie drucken sie. Welche Ausgaben haben genau einen Backslash `\`? Markieren Sie diese Zeichenketten.

{:.quiz}
0 | &quot;Level\n\t2&quot;
0 | &quot;Level\n\nTwo&quot;
1 | &apos;Storey\nTwo&apos;
1 | &apos;Tab is \t&apos;
0 | &quot;Using a tab\there&quot;
1 | &quot;//\\\\&quot; | Die Ausgabe ist `//\`
1 | &apos;//\\\\&apos; | Ein Backslash entkommt dem anderen hier: `//\`.
1 | &apos;\&quot;&apos; | Keine Flucht hier, die Zeichenkette erscheint wie sie ist: `\"`.

{% include quiz.html %}

## Kommentare

Sehen Sie sich zuerst die Anführungszeichen an. Sie sind hier das Wichtigste. Die Anführungszeichen entscheiden, was mit den Zeichen nach einem `\` passiert.

{% include nav.html %}
