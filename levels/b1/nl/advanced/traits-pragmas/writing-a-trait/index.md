---
title: Een trait schrijven
translations_gpt:
---

{% include menu.html %}

Traits zijn gewone multi-subroutines met een speciale naam, dus je kunt er zelf een schrijven. Wil je een trait toevoegen die `is something` heet, definieer dan een `multi sub trait_mod:<is>`. De parameters zeggen waarop de trait van toepassing is en geven hem zijn naam:

Dit is een van de meer gevorderde delen van Raku. Maak je geen zorgen als het ingewikkeld lijkt. Je kunt de ingebouwde traits prima gebruiken zonder te weten hoe ze gemaakt zijn. Je zult er zelden zelf een hoeven te schrijven. Zie deze pagina dus als een kijkje in hoe het van binnen werkt.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Lees de signatuur. De eerste parameter, `Routine:D $r`, is datgene waar de trait aan hangt. Hier is dat een subroutine. De `:D` is een type-_smiley_ die een **gedefinieerde** waarde eist. Dat betekent een echt routineobject, niet het ongedefinieerde type `Routine` zelf. Zijn partners zijn `:U`, die het ongedefinieerde typeobject eist, en `:_`, die allebei accepteert. De benoemde parameter `:$traced!` is de naam van de trait zelf. Omdat deze parameter er is, roept `is traced` deze sub aan. Traits draaien **tijdens het compileren**. Daarom worden `foo` en `bar` vastgelegd zodra ze gedeclareerd worden. Als het programma draait, bevat `@traced` ze al. Je zou de regel `say @traced` zelfs boven de twee `sub`-definities kunnen zetten. Hij zou dan nog steeds `[foo bar]` afdrukken.

Deze kleine trait legt alleen namen vast, maar hetzelfde idee kan veel meer. Hij kan een routine omwikkelen om logging toe te voegen, een attribuut controleren of metadata toevoegen. De eerste parameter kan ook een `Attribute` of `Variable` zijn in plaats van een `Routine`. Dan werkt de trait op attributen of variabelen. Met traits houdt Raku zijn syntaxis voor declaraties open. De ingebouwde `is rw` en je eigen `is traced` zijn op dezelfde manier gemaakt.

{% include nav.html %}
