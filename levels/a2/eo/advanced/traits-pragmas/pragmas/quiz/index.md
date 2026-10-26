---
title: Kvizo — Pragmoj
translations_gpt:
---

{% include menu.html %}

En Raku, la pragmo `strict` estas ŝaltita defaŭlte. Vi ne deklaras variablon, sed vi atribuas valoron al ĝi. Ekzemple, `$x = 42`. Kio okazas?

{:.quiz}
1 | Ĝi estas kompiltempa eraro
0 | Ĝi silente kreas `$x`
0 | Ĝi presas averton sed ruliĝas
0 | Ĝi metas `$x` al `Nil`

{% include quiz.html %}

<div class="extended-explanation">

`strict` estas ŝaltita defaŭlte. Kun ĝi, vi devas unue deklari ĉiun variablon per `my`. Do `$x = 42` sen `my` ne kompiliĝas. La eraro estas *Variable '$x' is not declared*. Kun `no strict`, la pragmo estas malŝaltita. Tiam la atribuo funkcias.

</div>

{% include nav.html %}
