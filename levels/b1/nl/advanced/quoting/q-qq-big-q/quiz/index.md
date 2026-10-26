---
title: Quiz — Aanhalingstekens
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

```raku
say q{a\nb};
```

{:.quiz}
1 | a\nb
0 | a<newline>b
0 | ab
0 | anb

{% include quiz.html %}

<div class="extended-explanation">

De operator `q` werkt als enkele aanhalingstekens. Hij verwerkt geen backslash-escapes zoals `\n`. De string houdt alle vier de tekens: `a`, `\`, `n` en `b`. Alleen een interpolerende vorm, zoals `qq` of dubbele aanhalingstekens, maakt van `\n` een echte nieuwe regel.

</div>

{% include nav.html %}
