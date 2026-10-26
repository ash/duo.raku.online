---
title: Kvizo — Distribuoj
translations_gpt:
---

{% include menu.html %}

Unu dosiero havas la nomon kaj la version de Raku-distribuo. Ĝi ankaŭ diras, kion la distribuo provizas. Kiu dosiero ĝi estas?

{:.quiz}
0 | `README.md`
1 | `META6.json`
0 | `Makefile`
0 | `distribution.cfg`

{% include quiz.html %}

<div class="extended-explanation">

La dosiero `META6.json` priskribas distribuon. Ĝi estas JSON-dosiero en la supra dosierujo. Ĝia ŝlosilo `provides` ligas ĉiun modulan nomon al ĝia fontdosiero. La ŝlosilo `depends` listigas la aliajn distribuojn, kiujn la distribuo bezonas.

</div>

{% include nav.html %}
