---
title: Zip-meta-operatoren
translations_gpt: Zip-meta-operatoren
---

{% include menu.html %}

De zip-meta-operator `Z` neemt twee lijsten, of meer. Hij zet hun elementen per positie bij elkaar:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Het resultaat is een lijst van groepen. De eerste groep heeft het eerste element van elke lijst. De tweede groep heeft het tweede element van elke lijst, enzovoort.

Er is ook een slimmere manier. Je kunt `Z` met een operator gebruiken. Dan werkt de operator op elk paar. Zo telt `Z+` bijvoorbeeld de elementen op dezelfde posities op:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Hier werkt de zip-meta-operator met de operator `+`. Hij berekent `1 + 10`, `2 + 20` en `3 + 30`. Op dezelfde manier vermenigvuldigt `Z*` de elementen op dezelfde posities:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

En `Z~` plakt de tekenreeksen op dezelfde posities aan elkaar:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
