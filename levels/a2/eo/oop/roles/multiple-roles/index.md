---
title: Kunmeti plurajn rolojn
translations_gpt:
---

{% include menu.html %}

Klaso povas fari pli ol unu rolon. Simple skribu `does` antaŭ ĉiu rolo:

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

Nun la klaso `Duck` havas du metodojn. Ĝi havas `move` el `Walk`. Ĝi havas `dive` el `Swim`:

```raku
say Duck.new.move; # walking
say Duck.new.dive; # diving
```

Ĉi tiu maniero kunmeti rolojn nomiĝas _kunmeto_. Vi konstruas klason el pluraj apartaj pecoj de konduto. Tio ofte donas al vi pli da elekto ol unu ĉeno de heredo. Klaso prenas ĝuste la kapablojn, kiujn ĝi bezonas. Ĝi prenas nenion pli.

{% include nav.html %}
