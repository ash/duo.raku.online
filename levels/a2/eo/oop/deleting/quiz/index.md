---
title: Kvizo — Forigi dosierojn
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | eraron
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` forigas nur **malplenan** dosierujon. Ĉi tie, `data` ankoraŭ havas `x.txt` en si. Do `rmdir` forigas nenion. La dosierujo restas sur sia loko. Tial `.e` ankoraŭ donas `True`. Kiel vi povas forigi la dosierujon? Unue, forigu ĉion en ĝi, ekzemple per `.unlink for 'data'.IO.dir`. Poste voku `rmdir`.

</div>

{% include nav.html %}
