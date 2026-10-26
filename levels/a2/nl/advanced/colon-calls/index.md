---
title: Aanroepen met een dubbele punt
---

{% include menu.html %}

Meestal staan de argumenten van een methode of een subroutine tussen haakjes: `@a.grep(* > 5)`. Raku heeft een tweede manier. Zet een **dubbele punt** na de naam. Alles na de dubbele punt wordt de lijst van argumenten. Je hebt helemaal geen haakjes nodig:

```raku
say (1..10).grep: * %% 2; # (2 4 6 8 10)
```

De dubbele punt in `grep:` doet hetzelfde werk als haakjes. `(1..10).grep: * %% 2` betekent precies hetzelfde als `(1..10).grep(* %% 2)`. Je kunt beide vormen gebruiken:

```raku
say <a b c>.join('-'); # a-b-c
say <a b c>.join: '-'; # a-b-c
```

De dubbele-puntvorm is het prettigst bij sommige methoden. Die krijgen een **blok** of een [Whatever](/nl/advanced/whatever)-expressie. De dubbele punt haalt een laag haakjes weg. Vergelijk:

```raku
my @a = 3, 1, 2;

say @a.sort({ $^b <=> $^a }); # haakjes om het blok
say @a.sort: { $^b <=> $^a }; # dubbele punt — geen sluithaakje nodig
```

Beide regels printen `(3 2 1)`. Maar de versie met de dubbele punt leest makkelijker. Bij een lang blok geldt dat nog meer.

Je kent al aanroepen zonder haakjes. Je gebruikt ze bij lijstoperatoren, zoals `say 1, 2, 3`. Daar neemt `say` alles erna als zijn argumenten. De dubbele-puntvorm is hetzelfde idee voor methoden. Onthoud één regel. De dubbele-puntvorm neemt de **rest van de instructie** als argumenten. Dus moet hij aan het **einde** van een keten van aanroepen staan. Daarom werkt `('a' .. 'z')».uc».ord.grep: 60 < * < 70`. `grep` is de laatste aanroep. Daarna komt niets meer in de keten. Moet je meer methoden aanroepen? Gebruik dan de vorm met haakjes. Of groepeer de delen van de hele expressie met haakjes. Dat maakt de code duidelijk:

```raku
say (('a' .. 'z')».uc».ord.grep: 60 < * < 70)».chr # (A B C D E)
```

Let op één ding. Gebruik de dubbele punt **en** haakjes niet samen, zoals `.grep:( … )`. In Raku betekent `:( … )` iets anders. Het is een signatuur, geschreven als waarde. Dus kan Raku deze code niet lezen. Gebruik ofwel `.grep( … )` ofwel `.grep: …`. Gebruik een van beide, niet allebei.

{% include nav.html %}
