---
title: Blokgerelateerde phasers
translations_gpt: Block-gerelateerde phasers
---

{% include menu.html %}

Raku heeft phasers voor het hele programma, maar er zijn ook andere. Deze phasers zijn gekoppeld aan het leven van één blok of één lus.

## Een blok betreden en verlaten

De `ENTER`-phaser draait elke keer als het programma een blok binnengaat. De `LEAVE`-phaser draait elke keer als het programma het blok weer verlaat. Het maakt niet uit op welke regel je ze schrijft:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

De uitvoer laat zien dat `ENTER` als eerste draait en `LEAVE` als laatste. De body van het blok draait daartussen:

```
before block
entering
inside
leaving
after block
```

`LEAVE` is vooral handig, omdat hij ook draait als het blok vroeg eindigt. Daardoor is het een betrouwbare plek om een resource vrij te geven.

Een phaser kan een volledig `{ }`-blok hebben in plaats van één instructie. Je kunt er ook meerdere hebben. Als een blok meer dan één `LEAVE` heeft, draaien ze in omgekeerde volgorde. De laatste die je hebt ingesteld, draait als eerste. Het blok werkt dus als een stapel, van boven naar beneden:

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

Het programma opent resource `A` als eerste en sluit die als laatste:

```
open A
open B
work
close B
close A
done
```

Deze "last in, first out"-volgorde is precies wat je nodig hebt voor opruimwerk. Wat je het laatst hebt opgezet, wordt als eerste opgeruimd. De `END`-phaser van het hele programma werkt op dezelfde manier. Meerdere `END`-blokken draaien ook in de omgekeerde volgorde van hoe ze geschreven zijn.

## Lus-phasers

Binnen lussen zijn er nog drie phasers voor de fasen van de lus. `FIRST` draait één keer vóór de eerste ronde, en `LAST` draait één keer na de laatste. `NEXT` draait aan het einde van elke ronde:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Dit is de uitvoer van de lus:

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

Net als andere phasers kunnen `FIRST`, `NEXT` en `LAST` overal in de code staan. Elk van hen draait op zijn eigen moment.

{% include nav.html %}
