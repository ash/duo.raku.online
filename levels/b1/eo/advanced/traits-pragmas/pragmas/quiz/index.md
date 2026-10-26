---
title: Kvizo — Pragmoj
translations_gpt:
---

{% include menu.html %}

La pragmo `strict` de Raku estas ŝaltita defaŭlte. Kio okazas, se vi atribuas al variablo, kiun vi neniam deklaris, kiel en `$x = 42`?

{:.quiz}
1 | Ĝi estas kompiltempa eraro
0 | Ĝi silente kreas `$x`
0 | Ĝi presas averton sed ruliĝas
0 | Ĝi metas `$x` al `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` estas ŝaltita defaŭlte. Ĝi postulas, ke vi unue deklaru ĉiun variablon per `my`. Do `$x = 42` sen `my` ne kompiliĝas. La eraro estas *Variable '$x' is not declared*. Se vi malŝaltas la pragmon per `no strict`, la atribuo funkcias.

</div>

{% include nav.html %}
