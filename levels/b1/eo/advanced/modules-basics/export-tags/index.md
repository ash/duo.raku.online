---
title: Eksportaj etikedoj
---

{% include menu.html %}

Se vi markas subprogramon per `is export`, ĝi iras en la _defaŭltan_ eksportgrupon de la modulo. En ĝi estas la nomoj, kiujn simpla `use` alportas. Vi ankaŭ povas doni al `is export` _etikedon_. Etikedoj ordigas la eksportojn en nomitajn grupojn. Tiam ĉiu programo povas elekti la grupon, kiun ĝi volas.

Etikedo estas skribita en krampoj post `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` ne havas etikedon, do ĝi apartenas al la defaŭlta grupo. `goodbye` havas la etikedon `:partings`.

Simpla `use` importas nur la defaŭltan grupon:

```raku
use Greeting;      # hello estas disponebla; goodbye ne estas
```

Se vi nomas etikedon, `use` importas tiun grupon anstataŭe. Eble surprize, ĝi _ne_ importas ankaŭ la defaŭltan grupon:

```raku
use Greeting :partings; # goodbye estas disponebla; hello ne estas
```

Kiam vi petas `:partings`, vi ricevas ĝuste tiun grupon. Por importi ĉion, kion modulo eksportas, uzu la enkonstruitan etikedon `:ALL`:

```raku
use Greeting :ALL; # ambaŭ hello kaj goodbye
```

Estas du specialaj etikedoj, kiujn estas utile koni. Ĉiu modulo subtenas `:ALL`, kiu importas ĉiujn ĝiajn eksportojn. Vi povas meti `:MANDATORY` sur rutinon, kiu devas esti ĉiam importata. Ne gravas, kiun etikedon la vokanto elektas.

Ĉiu etikedo fakte estas pako ene de la pako `EXPORT` de la modulo, ekzemple `Greeting::EXPORT::partings`. Ĝuste tion listigas [modula introspekto](/eo/advanced/module-introspection). Per etikedoj, pli granda modulo povas teni sian defaŭltan aron de eksportoj malgranda. Ĝi tamen povas proponi pliajn funkciojn, kiam programo petas ilin.

{% include nav.html %}
