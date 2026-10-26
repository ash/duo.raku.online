---
title: Tag di esportazione
translations_gpt: Tag di esportazione
---

{% include menu.html %}

Contrassegnare una subroutine con `is export` la mette nel gruppo di esportazione _predefinito_ del modulo. Sono i nomi che un semplice `use` importa. Puoi anche dare un _tag_ a `is export`. I tag dividono le esportazioni in gruppi con un nome. Così ogni programma può scegliere il gruppo che vuole.

Un tag si scrive tra parentesi dopo `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` non ha tag, quindi appartiene al gruppo predefinito. `goodbye` ha il tag `:partings`.

Un semplice `use` importa solo il gruppo predefinito:

```raku
use Greeting;      # hello is available; goodbye is not
```

Se indichi un tag, `use` importa invece quel gruppo. Forse ti sorprenderà, ma _non_ importa anche il gruppo predefinito:

```raku
use Greeting :partings; # goodbye is available; hello is not
```

Quando chiedi `:partings`, ottieni proprio quel gruppo. Per importare tutto ciò che un modulo esporta, usa il tag integrato `:ALL`:

```raku
use Greeting :ALL; # both hello and goodbye
```

Ci sono due tag speciali che è utile conoscere. Ogni modulo supporta `:ALL`, che importa tutte le sue esportazioni. Puoi mettere `:MANDATORY` su una routine che deve essere sempre importata. Non conta quale tag sceglie il chiamante.

Ogni tag è in realtà un package dentro il package `EXPORT` del modulo, per esempio `Greeting::EXPORT::partings`. È proprio quello che elenca l'[introspezione dei moduli](/it/advanced/module-introspection). Con i tag, un modulo più grande può tenere piccolo il suo insieme predefinito di esportazioni. Può comunque offrire funzionalità in più quando un programma le chiede.

{% include nav.html %}
