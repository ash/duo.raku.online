---
title: Mehrere Rollen zusammensetzen
translations_gpt:
---

{% include menu.html %}

Eine Klasse kann mehr als eine Rolle erfüllen. Schreiben Sie einfach `does` vor jede Rolle:

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

Jetzt hat die Klasse `Duck` zwei Methoden. Sie hat `move` aus `Walk`. Sie hat `dive` aus `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Diese Art, Rollen zu verbinden, nennt man _Komposition_. Sie bauen eine Klasse aus mehreren getrennten Teilen von Verhalten. Das gibt Ihnen oft mehr Möglichkeiten als eine einzige Vererbungskette. Eine Klasse nimmt genau die Fähigkeiten, die sie braucht. Mehr nimmt sie nicht.

{% include nav.html %}
