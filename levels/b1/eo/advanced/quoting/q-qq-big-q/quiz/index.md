---
title: Kvizo — Citado
translations_gpt:
---

{% include menu.html %}

Kion presas la sekva programo?

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

La operatoro `q` funkcias kiel unuopaj citiloj. Ĝi ne prilaboras maldekstre-streketajn eskapojn kiel `\n`. La ĉeno tenas ĉiujn kvar signojn: `a`, `\`, `n` kaj `b`. Nur interpolanta formo, kiel `qq` aŭ duoblaj citiloj, faras el `\n` veran novlinion.

</div>

{% include nav.html %}
