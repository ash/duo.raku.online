---
title: 'Solution: Drievoudige negatie'
---

{% include menu.html %}

Het programma uit de taak compileert niet, dus het heeft een kleine aanpassing nodig. Hier is een correcte versie die werkt (met een extra spatie tussen `!` en `!!`):

## Code

```raku
my $value = False;
say ! !!$value;
```

🦋 Je kunt de volledige code vinden in het bestand [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Uitvoer

Zoals je waarschijnlijk verwachtte, drukt het programma de omgekeerde Booleaanse waarde af:

```console
$ raku triple-negation.raku
True
```

## Opmerkingen

Tot onze verrassing compileerde het programma met drie uitroeptekens niet:

```console
$ raku triple-negation.raku
===SORRY!=== Fout tijdens het compileren van /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Twee termen op een rij
op /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    verwacht een van:
        infix
        infix stopper
        postfix
        statement einde
        statement modifier
        statement modifier lus
```

Eén extra spatie lost dit probleem op. Maar trap niet in een andere valkuil. Bekijk het volgende programma:

```raku
my $value = False;
say !!! $value;
```

Dit programma compileert, maar het stopt met de volgende melding:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Dit gebeurt omdat `!!!` een speciale operator is. Hij markeert een deel van de code als stubcode, dat wil zeggen code die nog niet af is. Als het programma dit punt bereikt, stopt het en drukt het de melding af. In ons geval was de melding de huidige waarde van de variabele `$value`. Kijk in 📖 [de documentatie](https://docs.raku.org/routine/!!!) voor meer details.

{% include nav.html %}
