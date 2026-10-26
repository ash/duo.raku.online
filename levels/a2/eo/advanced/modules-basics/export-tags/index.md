---
title: Eksportaj etikedoj
---

{% include menu.html %}

Marku subprogramon per `is export`. Tiam ĝi iras en la _defaŭltan_ eksportgrupon de la modulo. Simpla `use` alportas la nomojn el ĉi tiu grupo. Vi ankaŭ povas doni al `is export` _etikedon_. Per etikedoj, vi metas la eksportojn en grupojn kun nomoj. Tiam ĉiu programo prenas la grupon, kiun ĝi volas.

Vi skribas etikedon en krampoj post `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` ne havas etikedon. Do ĝi estas en la defaŭlta grupo. `goodbye` havas la etikedon `:partings`.

Simpla `use` importas nur la defaŭltan grupon:

```raku
use Greeting;      # hello estas disponebla; goodbye ne estas
```

Nun nomu etikedon. Tiam `use` importas tiun grupon anstataŭe. Tio eble surprizas vin. Ĝi _ne_ importas ankaŭ la defaŭltan grupon:

```raku
use Greeting :partings; # goodbye estas disponebla; hello ne estas
```

Kun `:partings`, vi ricevas ĝuste ĉi tiun grupon. Ĉu vi volas ĉiujn eksportojn de modulo? Tiam uzu la enkonstruitan etikedon `:ALL`:

```raku
use Greeting :ALL; # ambaŭ hello kaj goodbye
```

Estas bone koni du specialajn etikedojn. Ĉiu modulo subtenas `:ALL`. Ĝi importas ĉiujn eksportojn de la modulo. Vi povas meti `:MANDATORY` sur rutinon. Tiam Raku ĉiam importas la rutinon. Ne gravas, kiun etikedon la vokanto elektas.

Fakte, ĉiu etikedo estas pako. Ĝi estas en la pako `EXPORT` de la modulo. Ekzemplo estas `Greeting::EXPORT::partings`. [Modula introspekto](/eo/advanced/module-introspection) listigas ĝuste ĉi tiujn pakojn. Per etikedoj, granda modulo povas teni sian defaŭltan grupon malgranda. Programo tamen povas peti pliajn funkciojn.

{% include nav.html %}
