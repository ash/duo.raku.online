---
title: Blokgerelateerde phasers
translations_gpt: Block-gerelateerde phasers
---

{% include menu.html %}

Je kent de phasers voor het hele programma al. Raku heeft ook phasers voor één blok of één lus. Ze horen bij het leven van dat blok of die lus.

## Een blok in en weer uit

De `ENTER`-phaser draait elke keer als het programma een blok binnengaat. De `LEAVE`-phaser draait elke keer als het programma het blok verlaat. Hun plek in het blok maakt niet uit:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Kijk naar de uitvoer. `ENTER` draait als eerste, en `LEAVE` draait als laatste. De body van het blok zit ertussen:

```
before block
entering
inside
leaving
after block
```

`LEAVE` is heel handig. Hij draait ook als het blok vroeg stopt. Daar kun je dus veilig een resource vrijgeven, zoals een open bestand.

Een phaser kan een heel `{ }`-blok hebben, niet alleen één instructie. Je kunt ook meerdere phasers hebben. Een blok kan meer dan één `LEAVE` hebben. Dan draaien ze in omgekeerde volgorde. De laatste draait als eerste. Het werkt als een stapel. Wat het laatst erin gaat, komt er het eerst uit:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

Het programma opent resource `A` als eerste. Het sluit die als laatste:

```
open A
open B
work
close B
close A
done
```

Deze volgorde is "last in, first out". Ze is precies goed voor opruimen. Wat je het laatst opzet, ruim je als eerste op. De `END`-phaser voor het hele programma werkt op dezelfde manier. Meerdere `END`-blokken draaien ook in omgekeerde volgorde.

## Phasers voor lussen

Lussen hebben nog drie phasers. Ze markeren de stappen van de lus. `FIRST` draait één keer, vóór de eerste ronde. `LAST` draait één keer, na de laatste ronde. `NEXT` draait aan het einde van elke ronde:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

De lus drukt af:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Het is net als bij andere phasers. Je kunt `FIRST`, `NEXT` en `LAST` overal in de lus schrijven. Elke phaser draait op zijn eigen moment.

{% include nav.html %}
