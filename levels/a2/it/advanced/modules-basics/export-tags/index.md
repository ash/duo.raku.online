---
title: Tag di esportazione
translations_gpt: Tag di esportazione
---

{% include menu.html %}

Contrassegna una subroutine con `is export`. Allora va nel gruppo di esportazione _predefinito_ del modulo. Un semplice `use` importa i nomi di questo gruppo. Puoi anche dare un _tag_ a `is export`. Con i tag, metti le esportazioni in gruppi con un nome. Poi ogni programma prende il gruppo che vuole.

Scrivi un tag tra parentesi dopo `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` non ha tag. Quindi è nel gruppo predefinito. `goodbye` ha il tag `:partings`.

Un semplice `use` importa solo il gruppo predefinito:

```raku
use Greeting;      # hello is available; goodbye is not
```

Ora indica un tag. Allora `use` importa invece quel gruppo. Questo forse ti sorprende. `use` _non_ importa anche il gruppo predefinito:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Con `:partings` ottieni proprio questo gruppo. Vuoi tutte le esportazioni di un modulo? Allora usa il tag integrato `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

È utile conoscere due tag speciali. Ogni modulo supporta `:ALL`. Importa tutte le esportazioni del modulo. Puoi mettere `:MANDATORY` su una routine. Allora `use` importa sempre questa routine. Non conta quale tag sceglie il chiamante.

In realtà ogni tag è un package. Sta dentro il package `EXPORT` del modulo. Un esempio è `Greeting::EXPORT::partings`. L'[introspezione dei moduli](/it/advanced/module-introspection) elenca proprio questi package. Con i tag, un modulo grande può tenere piccolo il suo gruppo predefinito. Un programma può comunque chiedere più funzionalità.

{% include nav.html %}
