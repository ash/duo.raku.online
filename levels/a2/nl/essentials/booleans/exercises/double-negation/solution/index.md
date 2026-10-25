---
title: 'Solution: Dubbele negatie'
---

{% include menu.html %}

Laten we code toevoegen voor het tweede deel van de taak. We gebruiken dezelfde variabele opnieuw:

## Code

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Je kunt de volledige code vinden in het bestand [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Opmerkingen

Voer het programma nog niet uit. Laten we eerst nadenken: wat drukt het af? Er staan twee negatie-operatoren voor de variabele. Een negatie verandert `False` in `True` en `True` in `False`. Hier werken de twee `!` als twee aparte negatie-operatoren. In het eerste geval verandert de eerste negatie `False` in `True`. Dan verandert de tweede negatie het meteen terug in `False`. Het tweede geval werkt op dezelfde manier. Na twee negaties krijgen we de Booleaanse waarde van het begin.

## Uitvoer

Hier is de uitvoer van het programma. Die laat zien dat we gelijk hadden:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
