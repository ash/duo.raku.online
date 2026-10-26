---
title: Duoblaj sigeloj
translations_gpt:
---

{% include menu.html %}

_Tvigilo_ estas signo. Ĝi staras inter la sigelo kaj la nomo de variablo. Ĝi ne ŝanĝas la nomon. Ĝi ŝanĝas, kiel la variablo funkcias. Ĝi ankaŭ ŝanĝas, kiel Raku trovas ĝin. Jen la oftaj tvigiloj:

* `*` — **dinamika** variablo, ekzemple, `$*OUT`; Raku trovas ĝin tra la voka stako
* `?` — **kompiltempa** valoro; la kompililo agordas ĝin, ekzemple, `$?FILE` kaj `$?LINE`
* `!` — **privata** atributo de objekto, ekzemple, `$!balance`
* `.` — atributo, kiun vi uzas per ĝia aliriga metodo, ekzemple, `$.name`

Vi jam konas kelkajn el ili, sed sen la nomo «tvigilo». `$*OUT` kaj `$*IN` estas dinamikaj. Kaj vi vidis `$!` kaj `$.` en [la parto pri objektoj](/eo/oop).

La kompililo donas al la `?`-variabloj iliajn valorojn. Ĝi faras tion, kiam ĝi kompilas vian programon:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Ĉiu tvigilo montras alian specon de variablo. Vi vidas ĝin tuj. Kiam vi legas `$*foo`, vi scias, ke ĝi estas dinamika. Kaj `$?foo` estas kompiltempa konstanto. La sekva temo detale rigardas [dinamikajn variablojn](/eo/advanced/special-variables/dynamic-variables). Ili funkcias tre alie ol la leksikaj variabloj, kiujn vi konas.

{% include nav.html %}
