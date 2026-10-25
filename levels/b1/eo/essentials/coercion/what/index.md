---
title: 'Introspekto kun `WHAT`'
---

{% include menu.html %}

Por vidi la datumtipon en variablo, voku la metodon `WHAT` sur ĝi:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Kiel vi vidas en la komentoj, la tipo estas presita en krampoj. Ekzemple, `(Int)` aŭ `(Str)`.

Ne estas problemo voki metodon sur literalo mem. Ekzemple:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Notu, ke ni metas `-1` en krampojn. Sen ili, `say -1.WHAT` provus meti minuson antaŭ la rezulton de `1.WHAT`. Tio kondukas al escepto.

{% include nav.html %}
