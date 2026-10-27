---
title: 'Quiz — Bestanden verwijderen'
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | een fout
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` verwijdert alleen een **lege** map. Hier zit `x.txt` nog in `data`. Dus verwijdert `rmdir` niets. De map blijft op haar plaats. Daarom geeft `.e` nog steeds `True`. Hoe kun je de map verwijderen? Haal eerst alles eruit, bijvoorbeeld met `.unlink for 'data'.IO.dir`. Roep daarna `rmdir` aan.

</div>

{% include nav.html %}
