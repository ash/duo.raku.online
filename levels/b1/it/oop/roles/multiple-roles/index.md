---
title: Comporre più ruoli
translations_gpt:
---

{% include menu.html %}

Una classe può assumere più di un ruolo. Basta elencare ogni ruolo con il proprio `does`:

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

Ora la classe `Duck` ha due metodi, `move` da `Walk` e `dive` da `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Mettere insieme i ruoli in questo modo si chiama _composizione_. Ti permette di costruire una classe da più pezzi separati di comportamento. Spesso questo è più flessibile di una sola catena di ereditarietà. Una classe può mescolare proprio le capacità che le servono, e niente di più.

{% include nav.html %}
