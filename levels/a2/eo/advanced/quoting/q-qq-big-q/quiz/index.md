---
title: Kvizo — Citado
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

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

La operatoro `q` funkcias kiel unuopaj citiloj. Ĝi ne prilaboras maldekstre-streketajn eskapojn kiel `\n`. Do la ĉeno tenas ĉiujn kvar signojn: `a`, `\`, `n`, `b`. Nur formo, kiu interpolas, faras el `\n` veran novlinion. Ekzemploj estas `qq` kaj duoblaj citiloj.

</div>

{% include nav.html %}
