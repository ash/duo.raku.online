---
title: Instali modulojn el la reto
translations_gpt:
---

{% include menu.html %}

Vi ne estas limigita al la moduloj, kiujn vi mem skribas. La Raku-komunumo publikigis grandan kolekton de moduloj. Ili kovras ĉion de retkadroj ĝis datumformatoj. Vi povas instali ilin kaj uzi ilin en viaj propraj programoj.

## La instalilo `zef`

Moduloj estas instalataj per `zef`, kiu estas la norma modula administrilo. Ĝi venas kune kun Rakudo. Por instali modulon, donu ĝian nomon al `zef`:

```console
$ zef install JSON::Fast
```

`zef` elŝutas la modulon kune kun ĉio, de kio ĝi dependas. Poste ĝi rulas la testojn de la modulo kaj instalas ĝin. Instalita modulo estas aŭtomate en la serĉvojo. Do programo povas ŝargi ĝin per simpla `use`. La opcio `-I` ne estas bezonata:

```raku
use JSON::Fast;
```

`zef` ankaŭ povas serĉi en la ekosistemo. Ĝi povas ankaŭ ĝisdatigi aŭ forigi modulojn:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## De kie venas moduloj

Publikigitaj moduloj estas parto de la Raku-_ekosistemo_. Vi povas trarigardi ĝin en la retejo [raku.land](https://raku.land). Ĝi listigas la disponeblajn distribuaĵojn kaj ilian dokumentadon.

## `META6.json`

Distribuaĵo, kiun oni volas kunhavigi, havas priskriban dosieron nomitan `META6.json`. Ĉi tiu dosiero registras la nomon kaj la version de la distribuaĵo. Ĝi ankaŭ listigas la modulojn, kiujn ĝi provizas, kaj la aliajn distribuaĵojn, de kiuj ĝi dependas. `zef` legas ĉi tiun dosieron. El ĝi, `zef` lernas, kion instali kaj kiel la partoj kuniĝas. Se vi publikigas vian propran modulon, ĝi bezonas ĝustan `META6.json`. Tio permesas al ĉiuj aliaj instali ĝin.

{% include nav.html %}
