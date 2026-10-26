---
title: Waarden en sleutels
translations_gpt: Dutch
---

{% include menu.html %}

Elke constante van een enum heeft een naam en een getal. De methode `.value` geeft het getal. De methode `.key` geeft de naam als een tekenreeks:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku nummert de constanten vanaf nul. Maar je kunt dat veranderen. Schrijf de constanten als paren. Dan kies je de waarden zelf:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Hier begint de werkweek bij één, niet bij nul.

Het enum-type kan ook een lijst van al zijn constanten geven. De methode `.enums` geeft een map terug. Een map lijkt op een hash. In deze map heeft elke naam zijn waarde:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Met `.value`, `.key` en `.enums` kun je vrij heen en weer gaan. Je kunt van een constante naar zijn getal gaan. Je kunt van een getal terug naar de gegevens gaan. En je kunt de hele verzameling doorlopen. Daarom zijn enums handig, bijvoorbeeld voor menu's, toestanden en opzoektabellen.

{% include nav.html %}
