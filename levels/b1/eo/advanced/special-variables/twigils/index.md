---
title: Duoblaj sigeloj
translations_gpt:
---

{% include menu.html %}

_Tvigilo_ estas signo inter la sigelo kaj la nomo de variablo. Ĝi ne ŝanĝas la nomon. Anstataŭe, ĝi ŝanĝas, kiel la variablo kondutas kaj kiel Raku trovas ĝin. Jen la oftaj:

* `*` — **dinamika** variablo, kiel `$*OUT`, kiun Raku serĉas tra la voka stako
* `?` — **kompiltempa** valoro, kiun la kompililo donas, kiel `$?FILE` aŭ `$?LINE`
* `!` — **privata** atributo de objekto, kiel `$!balance`
* `.` — atributo, kiun vi atingas per ĝia aliriga metodo, kiel `$.name`

Vi jam vidis plurajn el ili, sed ni ne nomis ilin tvigiloj. Ili estas la dinamikaj `$*OUT` kaj `$*IN`, kaj `$!`/`$.` el [la parto pri objektoj](/eo/oop).

La kompililo plenigas la `?`-variablojn, dum ĝi kompilas vian programon:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Ĉiu tvigilo tuj montras alian specon de variablo. Kiam vi legas `$*foo`, vi tuj scias, ke ĝi estas dinamika. Kaj `$?foo` estas kompiltempa konstanto. La sekva temo detale rigardas [dinamikajn variablojn](/eo/advanced/special-variables/dynamic-variables). Ili kondutas tre malsame ol la leksikaj variabloj, kiujn vi uzis ĝis nun.

{% include nav.html %}
