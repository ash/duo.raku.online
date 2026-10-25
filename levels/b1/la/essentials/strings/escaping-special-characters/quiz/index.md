---
title: 'Quiz: Inversus punctus in output'
---

{% include menu.html %}

Si has chordas imprimis, quae ex eis exacte unum backslash `\` monstrant? Nota eas.

{:.quiz}
0 | &quot;Level\n\t2&quot;
0 | &quot;Level\n\nTwo&quot;
1 | &apos;Storey\nTwo&apos;
1 | &apos;Tab is \t&apos;
0 | &quot;Using a tab\there&quot;
1 | &quot;//\\\\&quot; | Output est `//\`
1 | &apos;//\\\\&apos; | Unus backslash alterum hic effugit: `//\`.
1 | &apos;\&quot;&apos; | Nullum effugium hic, chorda apparet ut est: `\"`.

{% include quiz.html %}

## Commentarii

Hic maxime quotationes spectare debes. Eae decernunt quomodo characteres post `\` effugiantur.

{% include nav.html %}
