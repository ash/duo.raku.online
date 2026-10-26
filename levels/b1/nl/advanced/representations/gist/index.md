---
title: De `.gist`-methode
---

{% include menu.html %}

De `.gist`-methode geeft een **mensvriendelijke** representatie van een waarde terug. Dit is de vorm die je zou willen *lezen*. `say` en `note` drukken precies dit af, omdat ze `.gist` aanroepen op elk argument.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Voor eenvoudige waarden is de gist gewoon de waarde zelf. Voor samengestelde gegevens voegt `.gist` wat opmaak toe, zodat de structuur makkelijk te lezen is:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Een type-object is een waarde die staat voor het type zelf. Zijn gist is zijn naam tussen haakjes. Daardoor valt het makkelijk op in de uitvoer:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
