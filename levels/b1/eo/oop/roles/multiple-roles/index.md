---
title: Kunmeti plurajn rolojn
translations_gpt:
---

{% include menu.html %}

Klaso povas fari pli ol unu rolon. Vi simple listigas ĉiun rolon kun ĝia propra `does`:

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

La klaso `Duck` nun havas du metodojn, `move` el `Walk` kaj `dive` el `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Kunmeti rolojn tiel nomiĝas _kunmeto_. Ĝi permesas al vi konstrui klason el pluraj apartaj pecoj de konduto. Tio ofte estas pli fleksebla ol unu ĉeno de heredo. Klaso povas enmiksi ĝuste la kapablojn, kiujn ĝi bezonas, kaj nenion pli.

{% include nav.html %}
