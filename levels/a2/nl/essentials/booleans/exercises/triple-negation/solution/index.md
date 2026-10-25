---
title: 'Solution: Drievoudige negatie'
---

{% include menu.html %}

Het programma in de taak compileert niet. Het heeft een kleine aanpassing nodig. Hier is een correcte versie die werkt. Er staat een spatie tussen `!` en `!!`:

## Code

```raku
my $value = False;
say ! !!$value;
```

🦋 Je kunt de volledige code vinden in het bestand [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Uitvoer

Het programma drukt de omgekeerde Booleaanse waarde af. Dat verwachtte je waarschijnlijk al:

```console
$ raku triple-negation.raku
True
```

## Opmerkingen

Het programma met drie uitroeptekens compileert niet. Dat hadden we niet verwacht:

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

Nog een spatie lost dit probleem op. Maar let goed op. Maak geen nieuwe fout. Bekijk dit programma:

```raku
my $value = False;
say !!! $value;
```

Dit programma compileert. Maar dan stopt het met deze melding:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Waarom gebeurt dit? `!!!` is een speciale operator. Hij markeert een deel van de code als stubcode. Stubcode is code die nog niet klaar is. Als het programma op deze plek komt, stopt het. Het drukt ook een melding af. Hier is de melding de huidige waarde van de variabele `$value`. Je kunt meer lezen in 📖 [de documentatie](https://docs.raku.org/routine/!!!).

{% include nav.html %}
