---
title: Comporre più ruoli
translations_gpt:
---

{% include menu.html %}

Una classe può assumere più di un ruolo. Basta scrivere `does` prima di ogni ruolo:

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

Ora la classe `Duck` ha due metodi. Ha `move` da `Walk`. Ha `dive` da `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Questo modo di mettere insieme i ruoli si chiama _composizione_. Costruisci una classe con più pezzi separati di comportamento. Spesso questo ti dà più libertà di una sola catena di ereditarietà. Una classe prende proprio le capacità che le servono. Non prende niente di più.

{% include nav.html %}
