---
title: 'Solution: True en False strings'
---

{% include menu.html %}

Deze oefening lijkt op [de vorige](../../true-false-numbers). Maar deze keer is de taak iets moeilijker. Er zijn meer ‘verdachte’ strings, die als `False` gezien kunnen worden. Laten we ze verkennen.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

Van al deze strings wordt alleen de lege string omgezet naar `False`. Alle andere strings worden `True`, ook als ze alleen spaties of het teken `0` bevatten.

🦋 Je kunt het volledige programma met het bovenstaande voorbeeld vinden in het bestand [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
