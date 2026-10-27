---
title: Meerdere rollen samenstellen
translations_gpt:
---

{% include menu.html %}

Een klasse kan meer dan één rol doen. Je noemt gewoon elke rol met een eigen `does`:

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

De klasse `Duck` heeft nu twee methoden, `move` uit `Walk` en `dive` uit `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Rollen zo samenvoegen heet _compositie_. Zo kun je een klasse bouwen uit meerdere losse stukken gedrag. Dat is vaak flexibeler dan één keten van overerving. Een klasse kan precies de vaardigheden binnenhalen die ze nodig heeft, en niets meer.

{% include nav.html %}
