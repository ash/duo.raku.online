---
title: Quiz — Plicas delere
translations_gpt:
---

{% include menu.html %}

Quid haec programma imprimit?

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

`rmdir` solum directoriam **vacuam** removet. Hic `data` adhuc `x.txt` continet, itaque `rmdir` nihil removet. Directoria manet ubi est, et `.e` adhuc `True` dat. Ut directoriam deleres, primum contenta eius removeres, exempli gratia per `.unlink for 'data'.IO.dir`. Deinde `rmdir` vocares.

</div>

{% include nav.html %}
