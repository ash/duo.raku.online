---
title: Notoj pri uzado de Unikodo
---

{% include menu.html %}

Raku atendas ĉiujn viajn programdosierojn en UTF-8. Kion tio signifas en praktiko? Vi ne devas zorgi pri karakteroj ekster ASCII. Ekzemple, vi povas meti ilin en ŝnurojn. Sed tio ne estas ĉio. Via programo ankaŭ povas legi UTF-8-tekstdosieron. Plej verŝajne, ankaŭ pri tio vi ne devas zorgi. Ankaŭ, Raku ĝuste trovas la longecon de ŝnuro. Ĝi kalkulas karakterojn, ne bajtojn. Ni rigardas tion pli detale poste.

Jen la sekva afero por scii. Nomoj en via programo povas havi ne-latinajn aŭ ne-anglajn literojn. Se vi volas, vi povas nomi variablon `$ι` anstataŭ `$i`. La kompililo ĝuste legas ĝin.

Raku estas tre zorga pri la Unikodaj ecoj de karakteroj. Ekzemple, ĝi scias, kiuj karakteroj estas literoj aŭ ciferoj. Ĝi ankaŭ scias, kiuj karakteroj faras parojn. Rondaj krampoj kaj aliaj krampoj estas paroj. Ofte, malsamaj partoj de la programo povas uzi malsamajn krampojn. Ekzemple, nia programo ‘Saluton, Mondo!’ povas uzi ĉi tiujn ne-latinajn citilojn. Vi vidos ilin denove poste, en Raku-gramatikoj:

```raku
say ｢Saluton, Mondo!｣;
```

Iuj enkonstruitaj operatoroj havas du formojn. Unu formo uzas Unikodon, kaj la alia uzas nur ASCII. Ekzemple, vi povas skribi ‘ne egala’ kiel `!=` aŭ kiel `≠`. Same estas por operacioj kun aroj. Unu ekzemplo estas `∈`. Ĝia ASCII-formo estas `(elem)`. Estas ankaŭ enkonstruita konstanto. Vi povas skribi ĝin kiel `pi` aŭ kiel `π`.

Kun nombroj, vi povas skribi frakciojn kiel `½` anstataŭ `0.5`. Vi ankaŭ povas kalkuli la kvadraton de `$x` kiel `$x²`. Tio uzas superskriban karakteron. Ĝi estas malgranda kaj skribita alte.

Jen la plena listo de ĉi tiuj paroj: 📖 [Unikodaj kaj ASCII-simboloj](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
