---
title: Viktorīna — Uzskaitījuma vērtības
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` atgriež skaitli, kas stāv aiz konstantes. Savukārt `.key` atgriež tās *nosaukumu* kā virkni. Tātad `Tue.key` ir `Tue`, un skaitlis `2`, kas tai piešķirts, nav svarīgs.

</div>

{% include nav.html %}
