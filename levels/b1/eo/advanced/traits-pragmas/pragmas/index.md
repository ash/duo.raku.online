---
title: Pragmoj
translations_gpt:
---

{% include menu.html %}

_Pragmo_ aspektas kiel modulo, kiun vi ŝargas per `use`. Sed ĝi ne enportas iun ajn kodon. Anstataŭe, ĝi ŝanĝas kompilan regulon por la resto de la nuna amplekso. Vi ŝaltas ĝin per `use`, kaj, kie tio havas sencon, malŝaltas per `no`.

La plej grava pragmo, `strict`, estas **ŝaltita defaŭlte** en Raku. Ĝi postulas, ke vi deklaru ĉiun variablon, antaŭ ol vi uzas ĝin. Tial Raku kaptas tajperaron en nomo de variablo. Sen ĝi, la tajperaro silente kreus novan variablon.

Se vi malŝaltas `strict` per `no strict`, ĉi tiu regulo ne plu validas. Tiam vi povas atribui al variablo, kiu neniam estis deklarita per `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Kun la defaŭlta `strict`, ĉi tiu nuda `$x = 42` estus kompiltempa eraro. La mesaĝo estas *Variable '$x' is not declared*. La linio `no strict` malstreĉas la regulon ĝis la fino de la amplekso ĉirkaŭ ĝi.

Kelkaj aliaj pragmoj estas `fatal`, `isms` kaj `variables`. `fatal` transformas kvietan malsukceson en ĵetitan escepton. Tio estas utila, kiam vi jam scias trakti esceptojn. `isms` permesas manierojn de skribado, kiuj venas el aliaj lingvoj. `variables` permesas al vi agordi la regulojn por variabloj. La efiko de pragmo estas _leksika_. Ĝi daŭras nur ĝis la fino de la bloko, kie ĝi aperas. Do vi povas fari regulon pli strikta aŭ pli malstrikta. Vi povas fari tion ĝuste en tiu parto de la kodo, kie vi bezonas ĝin.

Unu pragmo prenas argumenton: `lib`. Ĝi aldonas dosierujon al la listo, kiun Raku traserĉas, kiam ĝi ŝargas modulojn. Ĝi faras la samon kiel la komandlinia opcio `-I`, sed ene de la programo:

```raku
use lib 'lib';
```

Vi komencos uzi ĝin, kiam vi komencos skribi kaj ŝargi viajn proprajn [modulojn](/eo/advanced/modules-basics/using-modules).

{% include nav.html %}
