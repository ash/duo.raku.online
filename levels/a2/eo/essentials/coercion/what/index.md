---
title: 'Introspekto kun `WHAT`'
---

{% include menu.html %}

Vi povas vidi la tipon de la datumoj en variablo. Voku la metodon `WHAT` sur ĝi:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku presas la tipon en krampoj. Vi povas vidi tion en la komentoj. Ekzemple, `(Int)` aŭ `(Str)`.

Vi ankaŭ povas voki metodon rekte sur literalo. Literalo estas valoro skribita en la kodo. Ekzemple:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Notu la krampojn ĉirkaŭ `-1`. Ni bezonas ilin ĉi tie. Rigardu `say -1.WHAT` sen krampoj. Ĉi tie, Raku unue vokas `1.WHAT`. Poste ĝi provas meti minuson antaŭ la rezulton. Tio kondukas al escepto, speco de eraro.

{% include nav.html %}
