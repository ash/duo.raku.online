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

`rmdir` noņem tikai **tukšu** direktoriju. Šeit `data` vēl satur `x.txt`, tāpēc `rmdir` neko nenoņem. Direktorija paliek, kur bija, un `.e` joprojām dod `True`. Lai direktoriju izdzēstu, jums vispirms būtu jānoņem tās saturs, piemēram, ar `.unlink for 'data'.IO.dir`. Tad jūs izsauktu `rmdir`.

</div>

{% include nav.html %}
