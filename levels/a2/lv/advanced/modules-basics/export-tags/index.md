---
title: Eksporta tagi
translations_gpt:
---

{% include menu.html %}

Atzīmējiet apakšprogrammu ar `is export`. Tad tā nonāk moduļa _noklusētajā_ eksporta grupā. Vienkāršs `use` ienes nosaukumus no šīs grupas. Jūs varat arī dot `is export` _birku_. Ar birkām jūs saliekat eksportus grupās ar nosaukumiem. Tad katra programma ņem to grupu, ko tā vēlas.

Birku jūs rakstāt iekavās aiz `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` nav birkas. Tāpēc tā ir noklusētajā grupā. Apakšprogrammai `goodbye` ir birka `:partings`.

Vienkāršs `use` importē tikai noklusēto grupu:

```raku
use Greeting;      # hello is available; goodbye is not
```

Tagad nosauciet birku. Tad `use` tā vietā importē šo grupu. Tas var jūs pārsteigt. Noklusēto grupu tas klāt _neimportē_:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Ar `:partings` jūs iegūstat tieši šo grupu. Vai vēlaties visus moduļa eksportus? Tad izmantojiet iebūvēto birku `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Divas īpašas birkas ir labi zināt. Katrs modulis atbalsta `:ALL`. Tā importē visus moduļa eksportus. Jūs varat uzlikt `:MANDATORY` rutīnai. Tad rutīnu importē vienmēr. Nav svarīgi, kuru birku izvēlas izsaucējs.

Patiesībā katra birka ir pakotne. Tā atrodas moduļa pakotnē `EXPORT`. Piemērs ir `Greeting::EXPORT::partings`. [Moduļu introspekcija](/lv/advanced/module-introspection) uzskaita tieši šīs pakotnes. Ar birkām liels modulis var saglabāt savu noklusēto grupu mazu. Programma tik un tā var prasīt vairāk iespēju.

{% include nav.html %}
