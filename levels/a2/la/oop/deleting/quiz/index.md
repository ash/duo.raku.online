---
title: Quiz — Plicas delere
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | errorem
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` solum directoriam **vacuam** removet. Hic `data` adhuc `x.txt` continet. Itaque `rmdir` nihil removet. Directoria in loco suo manet. Ideo `.e` adhuc `True` dat. Quomodo directoriam delere potes? Primum omnia in ea remove, exempli gratia per `.unlink for 'data'.IO.dir`. Deinde `rmdir` voca.

</div>

{% include nav.html %}
