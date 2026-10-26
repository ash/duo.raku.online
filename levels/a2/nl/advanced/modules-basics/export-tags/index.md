---
title: Export-tags
translations_gpt: Exporttags
---

{% include menu.html %}

Markeer een subroutine met `is export`. Dan gaat hij naar de _standaard_ exportgroep van de module. Een gewone `use` haalt de namen uit deze groep binnen. Je kunt `is export` ook een _tag_ geven. Met tags verdeel je de exports in groepen met een naam. Dan neemt elk programma de groep die het wil.

Je schrijft een tag tussen haakjes na `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` heeft geen tag. Het hoort dus bij de standaardgroep. `goodbye` heeft de tag `:partings`.

Een gewone `use` importeert alleen de standaardgroep:

```raku
use Greeting;      # hello is beschikbaar; goodbye niet
```

Noem nu een tag. Dan importeert `use` in plaats daarvan die groep. Dat verrast je misschien. Het importeert _niet_ ook de standaardgroep:

```raku
use Greeting :partings; # goodbye is beschikbaar; hello niet
```

Met `:partings` krijg je precies deze groep. Wil je alle exports van een module? Gebruik dan de ingebouwde tag `:ALL`:

```raku
use Greeting :ALL; # zowel hello als goodbye
```

Twee speciale tags zijn goed om te kennen. Elke module ondersteunt `:ALL`. Die importeert alle exports van de module. Je kunt `:MANDATORY` op een routine zetten. Dan wordt de routine altijd geïmporteerd. Het maakt niet uit welke tag de aanroeper kiest.

Eigenlijk is elke tag een pakket. Het zit in het `EXPORT`-pakket van de module. Een voorbeeld is `Greeting::EXPORT::partings`. [Module-introspectie](/nl/advanced/module-introspection) toont precies deze pakketten. Met tags kan een grote module zijn standaardgroep klein houden. Een programma kan toch om meer functies vragen.

{% include nav.html %}
