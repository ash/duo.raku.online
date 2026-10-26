---
title: De `.gist`-methode
---

{% include menu.html %}

De `.gist`-methode geeft een **mensvriendelijke** vorm van een waarde terug. Het is de vorm die je wilt *lezen*. `say` drukt precies deze vorm af. `note` drukt hem ook af. Ze roepen `.gist` aan op elk argument.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Voor eenvoudige waarden is de gist gewoon de waarde. Sommige gegevens hebben meerdere delen. Voor zulke gegevens voegt `.gist` een beetje opmaak toe. Dan kun je de structuur nog steeds makkelijk lezen:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Een type-object is een waarde. Het staat voor het type zelf. Zijn gist is de naam van het type tussen haakjes. Zo zie je het makkelijk in de uitvoer:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
