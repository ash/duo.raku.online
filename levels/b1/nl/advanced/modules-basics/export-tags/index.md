---
title: Export-tags
translations_gpt: Exporttags
---

{% include menu.html %}

Als je een subroutine markeert met `is export`, komt hij in de _standaard_ exportgroep van de module. Dat zijn de namen die een gewone `use` binnenhaalt. Je kunt `is export` ook een _tag_ geven. Tags verdelen de exports in groepen met een naam. Dan kan elk programma de groep kiezen die het wil.

Een tag wordt tussen haakjes geschreven na `is export`:

```raku
unit module Greeting;

sub hello($name)   is export            { "Hello, $name!" }
sub goodbye($name) is export(:partings) { "Goodbye, $name!" }
```

`hello` heeft geen tag, dus het hoort bij de standaardgroep. `goodbye` heeft de tag `:partings`.

Een gewone `use` importeert alleen de standaardgroep:

```raku
use Greeting;      # hello is beschikbaar; goodbye niet
```

Als je een tag noemt, importeert `use` in plaats daarvan die groep. Het importeert dan, misschien verrassend, _niet_ ook de standaardgroep:

```raku
use Greeting :partings; # goodbye is beschikbaar; hello niet
```

Als je om `:partings` vraagt, krijg je precies die groep. Om alles te importeren wat een module exporteert, gebruik je de ingebouwde `:ALL`-tag:

```raku
use Greeting :ALL; # zowel hello als goodbye
```

Er zijn twee speciale tags die handig zijn om te kennen. Elke module ondersteunt `:ALL`, dat al zijn exports importeert. Je kunt `:MANDATORY` op een routine zetten die altijd geïmporteerd moet worden. Het maakt niet uit welke tag de aanroeper kiest.

Elke tag is eigenlijk een pakket binnen het `EXPORT`-pakket van de module, bijvoorbeeld `Greeting::EXPORT::partings`. Dat is precies wat [module-introspectie](/nl/advanced/module-introspection) toont. Met tags kan een grotere module zijn standaardset van exports klein houden. Toch kan hij extra functies aanbieden als een programma erom vraagt.

{% include nav.html %}
