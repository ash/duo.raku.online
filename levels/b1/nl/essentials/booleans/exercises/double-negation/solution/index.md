---
title: 'Solution: Dubbele negatie'
---

{% include menu.html %}

Om het tweede deel van de oefening op te lossen, breiden we het programma uit. We kunnen dezelfde variabele opnieuw gebruiken:

## Code

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Je kunt de volledige code vinden in het bestand [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Opmerkingen

Voordat je het programma uitvoert, laten we nadenken over wat het zal afdrukken. Er staan twee negatie-operatoren voor de variabele. Ze werken als twee aparte negaties. In het eerste geval verandert de waarde van `False` naar `True`. Dan verandert ze meteen weer terug van `True` naar `False`. Het tweede geval werkt op dezelfde manier. Na twee negaties krijgen we de oorspronkelijke Booleaanse waarde.

## Uitvoer

Het programma geeft de volgende uitvoer, die laat zien dat we gelijk hadden:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
