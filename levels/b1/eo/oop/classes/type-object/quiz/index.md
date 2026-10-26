---
title: Kvizo — Klasoj
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo? Memoru, ke `WHAT` raportas la *tipon*. Por vidi, ĉu valoro estas tipobjekto aŭ ekzemplero, vi bezonas `defined`.

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | eraron

{% include quiz.html %}

{% include nav.html %}
