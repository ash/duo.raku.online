---
title: Een trait schrijven
translations_gpt:
---

{% include menu.html %}

Traits zijn gewone multi-subroutines met een speciale naam. Je kunt dus je eigen traits schrijven. Wil je een trait `is something`? Definieer dan een `multi sub trait_mod:<is>`. Zijn parameters zeggen twee dingen. Ze zeggen waar de trait op werkt. Ze geven ook de naam van de trait:

Dit is een van de moeilijkere delen van Raku. Maak je geen zorgen als het moeilijk lijkt. Je kunt de ingebouwde traits goed gebruiken zonder deze kennis. Je hoeft niet te weten hoe ze gemaakt zijn. Je moet maar zelden zelf een trait schrijven. Deze pagina laat je alleen zien hoe traits van binnen werken.

```raku
my @traced;

multi sub trait_mod:<is>(Routine:D $r, :$traced!) {
    @traced.push($r.name);
}

sub foo() is traced { }
sub bar() is traced { }

say @traced; # [foo bar]
```

Kijk naar de signatuur. De eerste parameter is `Routine:D $r`. Dat is het ding met de trait. Hier is het een subroutine. De `:D` is een type-_smiley_. Die vraagt om een **gedefinieerde** waarde. Dat is een echt routineobject. Het is niet het ongedefinieerde type `Routine` zelf. Er zijn nog twee andere smileys. `:U` vraagt om het ongedefinieerde typeobject. `:_` neemt allebei. De benoemde parameter `:$traced!` is de naam van de trait. Deze parameter is de reden dat `is traced` deze sub aanroept. Traits draaien **tijdens het compileren**. Raku legt `foo` en `bar` dus vast zodra het hun declaraties leest. Als het programma draait, bevat `@traced` al beide namen. Je kunt de regel `say @traced` zelfs boven de twee `sub`-definities zetten. Hij drukt dan nog steeds `[foo bar]` af.

Deze kleine trait legt alleen namen vast. Maar hetzelfde idee kan veel meer. Een trait kan bijvoorbeeld een routine inpakken om logging toe te voegen. Hij kan een attribuut controleren. Of hij kan metadata toevoegen, dat wil zeggen extra gegevens over de code. Hier is de eerste parameter een `Routine`. Je kunt er ook een `Attribute` of een `Variable` van maken. Dan werkt de trait met attributen of variabelen. Traits houden de syntaxis van declaraties in Raku open. Je kunt altijd nieuwe traits toevoegen. De ingebouwde `is rw` en je eigen `is traced` zijn op dezelfde manier gemaakt.

{% include nav.html %}
