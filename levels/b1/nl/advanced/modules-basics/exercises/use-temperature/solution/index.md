---
title: 'Solution: Gebruik de converter'
translations_gpt: De oplossing van 'Gebruik de omrekener'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

Het programma, `temperature.raku`:

```raku
use Temperature;

sub MAIN($celsius) {
    say c-to-f($celsius);
}
```

🦋 Je kunt beide bronbestanden vinden in de map [exercises/advanced/modules-basics/use-temperature](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/use-temperature).

## Uitvoer

```console
$ raku -I. temperature.raku 100
212
```

## Opmerkingen

1. `use Temperature` laadt de module en importeert de geëxporteerde subroutine `c-to-f`. Het programma kan hem dus direct aanroepen.

1. `sub MAIN($celsius)` ontvangt het opdrachtregelargument. Je kiest de temperatuur dus als je het programma uitvoert. Die staat niet in de code geschreven. Als je het programma zonder argument uitvoert, drukt Raku automatisch een gebruiksbericht af.

1. Raku moet de module kunnen vinden. Daarom voer je het programma uit met `-I.`. Dan zoekt Raku naar `Temperature.rakumod` in de huidige map. Het omrekenen van `100` °C geeft `212` °F.

{% include nav.html %}
