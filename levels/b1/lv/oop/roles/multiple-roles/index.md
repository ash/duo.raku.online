---
title: Vairāku lomu apvienošana
translations_gpt:
---

{% include menu.html %}

Klase var darīt vairāk nekā vienu lomu. Jūs vienkārši uzskaitāt katru lomu ar savu `does`:

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

Klasei `Duck` tagad ir divas metodes: `move` no `Walk` un `dive` no `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Šādu lomu apvienošanu sauc par _komponēšanu_. Tā ļauj jums būvēt klasi no vairākiem atsevišķiem uzvedības gabaliem. Tas bieži ir elastīgāk nekā viena mantošanas ķēde. Klase var iemaisīt tieši tās spējas, kas tai vajadzīgas, un neko vairāk.

{% include nav.html %}
