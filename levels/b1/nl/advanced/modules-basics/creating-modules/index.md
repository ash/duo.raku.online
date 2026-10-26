---
title: Modules aanmaken
translations_gpt: Modules maken
---

{% include menu.html %}

Als programma's groter worden, helpt het om ze op te splitsen in herbruikbare stukken. Een _module_ is een eenheid van code in een eigen bestand. Andere programma's kunnen hem laden en gebruiken.

Een modulebestand heeft de extensie `.rakumod`. Het begint met `unit module`, dat de module zijn naam geeft. De subroutines erin zijn standaard privé. Om er een te delen met code die de module gebruikt, markeer je hem met de `is export`-eigenschap.

Hier is een module in een bestand met de naam `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

De subroutine `hello` heeft `is export`, dus elk programma dat de module gebruikt, kan hem zien. Zonder `is export` zou een subroutine privé blijven binnen de module.

Een module kan ook gegevens delen met `our`-variabelen. Andere code kan ze bereiken via de naam van de module. Om een versienummer aan `Greeting` toe te voegen, is één extra regel in het bestand genoeg:

```raku
our $version = '1.0';
```

Zodra deze regel in `Greeting.rakumod` staat, is de waarde beschikbaar als `$Greeting::version`. Dit werkt overal waar de module geladen is.

De volgende onderwerpen laten zien [hoe een programma zo'n module laadt](/nl/advanced/modules-basics/using-modules). Ze leggen ook uit wat het programma er precies van krijgt.

{% include nav.html %}
