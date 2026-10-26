---
title: Pragmoj
translations_gpt:
---

{% include menu.html %}

_Pragmo_ aspektas kiel modulo. Vi ŝargas ĝin per `use`. Sed ĝi ne enportas novan kodon. Anstataŭe, ĝi ŝanĝas regulon de kompilado. La ŝanĝo funkcias ĝis la fino de la nuna amplekso. Vi ŝaltas pragmon per `use`. Se tio havas sencon, vi povas malŝalti ĝin per `no`.

La plej grava pragmo estas `strict`. En Raku, ĝi estas **ŝaltita defaŭlte**. Kun ĝi, vi devas deklari ĉiun variablon, antaŭ ol vi uzas ĝin. Do Raku trovas tajperarojn en nomoj de variabloj. Malĝusta nomo ne kreas silente novan variablon.

`no strict` malŝaltas `strict`. Tiam ĉi tiu regulo malaperas. Nun vi povas atribui valoron al variablo sen `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Kun la normala `strict`, ĉi tiu `$x = 42` sen `my` estas eraro. Raku montras ĝin dum kompilado: *Variable '$x' is not declared*. La linio `no strict` malŝaltas ĉi tiun regulon. Tio daŭras ĝis la fino de la amplekso.

Ekzistas ankaŭ aliaj pragmoj. `fatal` igas kvietan malsukceson ĵeti escepton. Tio estas utila, post kiam vi lernos trakti esceptojn. `isms` permesas kelkajn tipajn manierojn skribi kodon el aliaj lingvoj. `variables` ŝanĝas la regulojn por variabloj. La efiko de pragmo estas _leksika_. Ĝi funkcias nur ĝis la fino de sia bloko. Do vi povas fari regulon pli strikta aŭ malpli strikta. Vi povas fari tion ĝuste tie, kie vi bezonas ĝin en la kodo.

Unu pragmo prenas argumenton. Ĝi estas `lib`. Raku serĉas modulojn en listo de dosierujoj. `lib` aldonas dosierujon al ĉi tiu listo. Ĝi funkcias kiel la komandlinia opcio `-I`. Sed vi skribas ĝin ene de la programo:

```raku
use lib 'lib';
```

Vi bezonos ĝin, kiam vi skribos kaj ŝargos viajn proprajn [modulojn](/eo/advanced/modules-basics/using-modules).

{% include nav.html %}
