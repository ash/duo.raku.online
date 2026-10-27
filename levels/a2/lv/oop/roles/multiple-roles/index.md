---
title: Vairāku lomu apvienošana
translations_gpt:
---

{% include menu.html %}

Klase var darīt vairāk nekā vienu lomu. Vienkārši rakstiet `does` pirms katras lomas:

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

Tagad klasei `Duck` ir divas metodes. Tai ir `move` no `Walk`. Tai ir `dive` no `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Šādu lomu salikšanu kopā sauc par _komponēšanu_. Jūs būvējat klasi no vairākiem atsevišķiem uzvedības gabaliem. Tas bieži dod jums vairāk izvēles nekā viena mantošanas ķēde. Klase ņem tieši tās spējas, kas tai vajadzīgas. Neko vairāk tā neņem.

{% include nav.html %}
