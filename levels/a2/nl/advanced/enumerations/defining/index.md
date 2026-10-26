---
title: Een enum definiëren
translations_gpt: Dutch
---

{% include menu.html %}

Om een enum te declareren, schrijf je het sleutelwoord `enum`. Daarna schrijf je een naam en de lijst met namen voor de constanten:

```raku
enum Colour <red green blue>;
```

Dit maakt een nieuw type, `Colour`. Het maakt ook drie constanten: `red`, `green` en `blue`. Je kunt een constante gewoon met zijn naam gebruiken:

```raku
say red;   # red
say green; # green
```

Achter elke naam zit een nummer. Raku geeft de nummers zelf. Het begint bij nul en volgt de volgorde van je lijst. `red` is dus `0`, `green` is `1` en `blue` is `2`. De waarden hebben een volgorde. Dus kun je de constanten vergelijken:

```raku
say red < blue; # True
```

Een variabele kan de enum als type hebben. Dan neemt de variabele alleen deze constanten aan:

```raku
my Colour $c = green;
say $c; # green
```

Een constante en iets anders kunnen dezelfde naam hebben. Schrijf dan de naam van de enum en `::` voor de constante. Dat werkt altijd:

```raku
say Colour::red; # red
```

Een enum zet constanten die bij elkaar horen samen. De enum geeft ze een naam en een type. Code met deze constanten is veel duidelijker dan code met alleen getallen. Het volgende onderwerp gaat over [de getallen achter de namen](/nl/advanced/enumerations/values-and-keys).

{% include nav.html %}
