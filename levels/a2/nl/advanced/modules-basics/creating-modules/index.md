---
title: Modules aanmaken
translations_gpt: Modules maken
---

{% include menu.html %}

Programma's worden na een tijd groter. Dan is het goed om ze in stukken te verdelen. Je kunt deze stukken opnieuw gebruiken. Een _module_ is zo'n stuk code. Hij staat in een eigen bestand. Andere programma's kunnen hem laden en gebruiken.

Een modulebestand heeft de extensie `.rakumod`. Het begint met `unit module` en de naam van de module. Normaal zijn de subroutines in een module privé. Alleen de module zelf kan ze gebruiken. Wil je een subroutine delen met andere code? Markeer hem dan met de eigenschap `is export`.

Hier is een module in het bestand `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

De subroutine `hello` heeft `is export`. Elk programma dat de module gebruikt, kan hem dus zien. Een subroutine zonder `is export` blijft privé. Alleen de module zelf kan hem gebruiken.

Een module kan ook gegevens delen. Daarvoor gebruikt hij `our`-variabelen. Andere code kan erbij via de naam van de module. Laten we een versienummer aan `Greeting` toevoegen. We hebben maar één extra regel in het bestand nodig:

```raku
our $version = '1.0';
```

Nu heeft `Greeting.rakumod` deze regel. De waarde is dus beschikbaar als `$Greeting::version`. Dit werkt overal waar de module geladen is.

De volgende onderwerpen laten zien [hoe een programma zo'n module laadt](/nl/advanced/modules-basics/using-modules). Ze laten ook zien wat het programma ervan krijgt.

{% include nav.html %}
