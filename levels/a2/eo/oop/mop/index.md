---
title: La metaobjekta protokolo 🆕
translations_gpt:
---

{% include menu.html %}

En Raku, alia objekto priskribas ĉiun klason, rolon kaj tipon. Ĉi tiu objekto estas ĝia _metaobjekto_. La metaobjekto konas la nomon de la tipo. Ĝi konas la atributojn kaj la metodojn de la tipo. Ĝi ankaŭ scias, kie la tipo estas en la arbo de heredo. La maniero uzi ĉi tiujn metaobjektojn estas la _metaobjekta protokolo_, aŭ MOP.

Vi jam uzis malgrandan parton de ĝi: `.^name` estas MOP-voko. Ĉi tiu sekcio bone klarigas la sintakson `.^`. Ĝi montras la plej utilajn metametodojn. Ili estas metodoj de metaobjekto. Per ili, vi povas rigardi en tipon. Per la MOP, vi eĉ povas aldoni metodojn al klaso. Vi povas fari tion dum la programo ruliĝas.

{% include nav.html %}
