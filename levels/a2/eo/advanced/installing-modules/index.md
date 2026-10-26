---
title: Instali modulojn el la reto
translations_gpt:
---

{% include menu.html %}

Vi povas skribi viajn proprajn modulojn. Sed la Raku-komunumo ankaŭ publikigas multajn modulojn. Estas moduloj por multaj aferoj, de retkadroj ĝis datumformatoj. Vi povas instali ilin kaj uzi ilin en viaj programoj.

## Instalado per `zef`

Vi instalas modulojn per `zef`. `zef` estas la norma modula administrilo. Ĝi venas kun Rakudo. Por instali modulon, donu al `zef` la nomon de la modulo:

```console
$ zef install JSON::Fast
```

`zef` elŝutas la modulon. Ĝi ankaŭ elŝutas ĉion, kion la modulo bezonas. Poste ĝi rulas la testojn de la modulo. Tiam ĝi instalas la modulon. Post tio, la modulo estas aŭtomate en la serĉvojo. Do programo povas ŝargi ĝin simple per `use`. Vi ne bezonas la opcion `-I`:

```raku
use JSON::Fast;
```

Vi ankaŭ povas serĉi en la ekosistemo. La ekosistemo estas ĉiuj moduloj, kiujn homoj publikigas. Kaj vi povas ĝisdatigi aŭ forigi modulojn:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## De kie venas moduloj

Publikigitaj moduloj estas en la Raku-_ekosistemo_. Vi povas rigardi ĝin en la retejo [raku.land](https://raku.land). La retejo listigas la disponeblajn distribuaĵojn. Distribuaĵo enhavas unu aŭ pli da moduloj. La retejo ankaŭ montras ilian dokumentadon.

## `META6.json`

Distribuaĵo por kunhavigo havas dosieron kun priskribo. La dosiero nomiĝas `META6.json`. Ĝi enhavas la nomon kaj la version de la distribuaĵo. Ĝi listigas la modulojn en la distribuaĵo. Ĝi ankaŭ listigas la aliajn distribuaĵojn, kiujn ĝi bezonas. `zef` legas ĉi tiun dosieron. Do ĝi scias, kion instali. Ĝi ankaŭ scias, kiel la partoj kuniĝas. Eble vi volas publikigi vian propran modulon. Tiam donu al ĝi ĝustan `META6.json`. Kun ĉi tiu dosiero, ĉiuj aliaj povas instali vian modulon.

{% include nav.html %}
