---
title: La metaobjekta protokolo 🆕
translations_gpt:
---

{% include menu.html %}

Ĉiu klaso, rolo kaj tipo en Raku estas priskribata de alia objekto, kiu nomiĝas ĝia _metaobjekto_. La metaobjekto konas la nomon de la tipo kaj ĝian lokon en la hereda arbo. Ĝi ankaŭ konas la atributojn kaj metodojn de la tipo. La maniero labori kun ĉi tiuj metaobjektoj estas la _metaobjekta protokolo_, aŭ MOP.

Vi jam uzis malgrandan parton de ĝi: `.^name` estas MOP-voko. Ĉi tiu sekcio bone klarigas la sintakson `.^`. Ĝi montras la plej utilajn metametodojn por rigardi en tipon. Kaj ĝi montras, ke la MOP eĉ permesas al vi aldoni metodojn al klaso. Vi povas fari tion dum la programo ruliĝas.

{% include nav.html %}
