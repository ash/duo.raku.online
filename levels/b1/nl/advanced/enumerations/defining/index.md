---
title: Een enum definiëren
translations_gpt: Dutch
---

{% include menu.html %}

Om een enum te declareren, schrijf je het sleutelwoord `enum`, een naam en de namen van de constanten:

```raku
enum Colour <red green blue>;
```

Nu is er een nieuw type, `Colour`, met drie constanten: `red`, `green` en `blue`. Je kunt elke constante direct bij zijn naam gebruiken:

```raku
say red;   # red
say green; # green
```

Achter elke naam zit een nummer. Raku geeft die nummers automatisch, vanaf nul, in de volgorde van je lijst. `red` is dus `0`, `green` is `1` en `blue` is `2`. Omdat de waarden een volgorde hebben, kun je de constanten vergelijken:

```raku
say red < blue; # True
```

Je kunt een variabele de enum als type geven. Dan accepteert die alleen deze constanten:

```raku
my Colour $c = green;
say $c; # green
```

De naam van een constante kan gelijk zijn aan een andere naam in je programma. Dan kun je de constante altijd bereiken via de naam van de enum en `::`:

```raku
say Colour::red; # red
```

Een enum geeft een groep constanten die bij elkaar horen een naam en een type. Code die ze gebruikt, is veel duidelijker dan code met gewone getallen. Het volgende onderwerp gaat over [de getallen achter de namen](/nl/advanced/enumerations/values-and-keys).

{% include nav.html %}
