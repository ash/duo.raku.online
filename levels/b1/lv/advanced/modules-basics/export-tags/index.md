---
title: Eksporta tagi
translations_gpt:
---

{% include menu.html %}

Ja atzīmējat apakšprogrammu ar `is export`, tā nonāk moduļa _noklusētajā_ eksporta grupā. Tie ir nosaukumi, ko ienes vienkāršs `use`. Jūs varat arī dot `is export` _birku_. Birkas sašķiro eksportus nosauktās grupās. Tad katra programma var izvēlēties vajadzīgo grupu.

Birku raksta iekavās aiz `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` nav birkas, tāpēc tā pieder noklusētajai grupai. Apakšprogrammai `goodbye` ir birka `:partings`.

Vienkāršs `use` importē tikai noklusēto grupu:

```raku
use Greeting;      # hello is available; goodbye is not
```

Ja nosaucat birku, `use` tā vietā importē šo grupu. Iespējams, pārsteidzoši, bet noklusēto grupu tas klāt _neimportē_:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Kad prasāt `:partings`, jūs iegūstat tieši šo grupu. Lai importētu visu, ko modulis eksportē, izmantojiet iebūvēto birku `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Ir divas īpašas birkas, ko noder zināt. Katrs modulis atbalsta `:ALL`, kas importē visus tā eksportus. Jūs varat uzlikt `:MANDATORY` rutīnai, kura vienmēr jāimportē. Nav svarīgi, kuru birku izvēlas izsaucējs.

Katra birka patiesībā ir pakotne moduļa pakotnē `EXPORT`, piemēram, `Greeting::EXPORT::partings`. Tieši to uzskaita [moduļu introspekcija](/lv/advanced/module-introspection). Ar birkām lielāks modulis var saglabāt savu noklusēto eksportu kopu nelielu. Tas joprojām var piedāvāt papildu iespējas, kad programma tās prasa.

{% include nav.html %}
