---
title: Quiz — Aanhalingstekens
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

De operator `q` werkt als enkele aanhalingstekens. Hij verwerkt geen backslash-escapes zoals `\n`. Daarom houdt de string alle vier de tekens: `a`, `\`, `n`, `b`. Alleen een vorm die interpoleert maakt van `\n` een echte nieuwe regel. Voorbeelden zijn `qq` en dubbele aanhalingstekens.

</div>

{% include nav.html %}
