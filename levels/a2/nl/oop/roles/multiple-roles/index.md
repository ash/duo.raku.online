---
title: Meerdere rollen samenstellen
translations_gpt:
---

{% include menu.html %}

Een klasse kan meer dan één rol doen. Schrijf gewoon `does` voor elke rol:

```raku
role Walk {
    method move { 'walking' }
}

role Swim {
    method dive { 'diving' }
}

class Duck does Walk does Swim {
}
```

Nu heeft de klasse `Duck` twee methoden. Ze heeft `move` uit `Walk`. Ze heeft `dive` uit `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Deze manier om rollen samen te voegen heet _compositie_. Je bouwt een klasse uit meerdere losse stukken gedrag. Dat geeft je vaak meer keuze dan één keten van overerving. Een klasse neemt precies de vaardigheden die ze nodig heeft. Ze neemt niets meer.

{% include nav.html %}
