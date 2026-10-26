---
title: Waarden en sleutels
translations_gpt: Dutch
---

{% include menu.html %}

Elke enum-constante heeft zowel een naam als een getal. De methode `.value` geeft het getal terug, en `.key` geeft de naam als een tekenreeks:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Je hoeft de automatische nummers vanaf nul niet te gebruiken. Om de waarden zelf te kiezen, schrijf je de constanten als paren:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Hier begint de werkweek bij één in plaats van bij nul.

Het enum-type kan zelf ook al zijn constanten opsommen. De methode `.enums` geeft een map terug die elke naam aan zijn waarde koppelt:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Met deze drie methoden, `.value`, `.key` en `.enums`, kun je vrij heen en weer gaan. Je kunt van een constante naar zijn getal gaan en van een getal terug naar de gegevens. Je kunt ook met de hele verzameling werken. Daardoor zijn enums handig voor zaken als menu's, toestanden en opzoektabellen.

{% include nav.html %}
