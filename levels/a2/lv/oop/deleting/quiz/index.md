---
title: Viktorīna — Failu dzēšana
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | kļūda
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` noņem tikai **tukšu** direktoriju. Šeit direktorijā `data` vēl ir `x.txt`. Tātad `rmdir` neko nenoņem. Direktorija paliek savā vietā. Tāpēc `.e` joprojām dod `True`. Kā jūs varat izdzēst direktoriju? Vispirms noņemiet visu, kas tajā ir, piemēram, ar `.unlink for 'data'.IO.dir`. Tad izsauciet `rmdir`.

</div>

{% include nav.html %}
