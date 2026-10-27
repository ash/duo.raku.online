---
title: Mehrere Rollen zusammensetzen
translations_gpt:
---

{% include menu.html %}

Eine Klasse kann mehr als eine Rolle erfüllen. Sie führen einfach jede Rolle mit ihrem eigenen `does` auf:

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

Die Klasse `Duck` hat jetzt zwei Methoden, `move` aus `Walk` und `dive` aus `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Rollen auf diese Weise zu verbinden nennt man _Komposition_. Damit können Sie eine Klasse aus mehreren getrennten Teilen von Verhalten bauen. Das ist oft flexibler als eine einzige Vererbungskette. Eine Klasse kann genau die Fähigkeiten einmischen, die sie braucht, und nicht mehr.

{% include nav.html %}
