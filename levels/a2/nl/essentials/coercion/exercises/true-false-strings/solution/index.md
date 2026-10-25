---
title: 'Solution: True en False strings'
---

{% include menu.html %}

Deze oefening lijkt op [de vorige](../../true-false-numbers). Maar deze keer is de taak iets moeilijker. Hier kunnen meer strings op `False` lijken. Laten we ze bekijken.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Van al deze strings wordt alleen de lege string `False`. Alle andere strings worden `True`. Zelfs een string met alleen spaties wordt `True`. Een string met het teken `0` is ook `True`.

🦋 Je kunt het volledige programma met het bovenstaande voorbeeld vinden in het bestand [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
