---
title: Notoj pri uzado de Unikodo
---

{% include menu.html %}

Raku supozas, ke ĉiuj viaj programdosieroj estas konservitaj en UTF-8. En praktiko, vi ne devas zorgi pri ne-ASCII-karakteroj. Ekzemple, vi povas uzi ilin en ŝnurliteraloj. Sed tio ne estas ĉio. Legi UTF-8-tekstdosieron plej verŝajne ankaŭ ne estas problemo. Tio ankaŭ signifas, ke Raku ĝuste trovas la longecon de ŝnuro. Ĝi kalkulas karakterojn, ne bajtojn. Ni rigardos tion pli detale poste.

Jen la sekva afero, kiun vi devus scii. Identigiloj, aŭ nomoj, povas havi ne-latinajn aŭ ne-anglajn literojn. Se vi volas, vi povas nomi vian variablon `$ι` anstataŭ `$i`. La kompililo ĝuste legos ĝin.

Raku estas sufiĉe strikta pri la Unikodaj ecoj de karakteroj. Ekzemple, ĝi scias, ĉu karaktero estas litero aŭ cifero. Ĝi ankaŭ scias, kiuj karakteroj formas parojn, kiel rondaj krampoj kaj aliaj krampoj. Ofte, malsamaj partoj de la programo povas uzi malsamajn specojn de krampoj. Ekzemple, ni ŝanĝu nian programon ‘Saluton, Mondo!’. Ni povas uzi ĉi tiujn ne-latinajn citilojn en ĝi. Vi vidos ilin denove, kiam ni laboros kun Raku-gramatikoj:

```raku
say ｢Saluton, Mondo!｣;
```

Iuj enkonstruitaj operatoroj havas du formojn: Unikodan kaj ASCII. Ekzemple, vi povas tajpi ‘ne egala’ kiel `!=` aŭ kiel `≠`. La samo validas por operacioj kun aroj. Ekzemple, `∈` havas puran ASCII-version, `(elem)`. Krome, vi povas nomi enkonstruitan konstanton `pi` aŭ `π`.

Kun nombroj, vi povas uzi frakciojn kiel `½` anstataŭ `0.5`. Vi ankaŭ povas ricevi la kvadraton de `$x` per superskriba karaktero: `$x²`.

Vidu la plenan liston de tiaj paroj en la dokumentaro: 📖 [Unikodo kontraŭ ASCII simboloj](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
