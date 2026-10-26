---
title: Zip-meta-operatoren
translations_gpt: Zip-meta-operatoren
---

{% include menu.html %}

De zip-meta-operator `Z` neemt twee of meer lijsten. Hij koppelt hun elementen op positie:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Het resultaat is een lijst van groepen. De eerste groep bevat het eerste element van elke lijst. De volgende groep bevat de tweede elementen, enzovoort.

Nog slimmer: je kunt `Z` combineren met een operator die op elk paar werkt. `Z+` telt bijvoorbeeld de elementen positie voor positie op:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Hier omhult de zip-meta-operator de operator `+`. Hij berekent `1 + 10`, `2 + 20` en `3 + 30`. Op dezelfde manier vermenigvuldigt `Z*` de elementen die bij elkaar horen:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

En `Z~` voegt de tekenreeksen samen die bij elkaar horen:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
