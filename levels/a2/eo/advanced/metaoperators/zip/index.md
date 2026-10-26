---
title: Zip-metaoperatoroj
translations_gpt:
---

{% include menu.html %}

La zipa meta-operatoro `Z` prenas du listojn, aŭ pli. Ĝi kunmetas iliajn elementojn laŭ pozicio:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

La rezulto estas listo de grupoj. La unua grupo havas la unuan elementon de ĉiu listo. La dua grupo havas la duan elementon de ĉiu listo, kaj tiel plu.

Ekzistas ankaŭ pli lerta maniero. Vi povas uzi `Z` kun operatoro. Tiam la operatoro laboras kun ĉiu paro. Ekzemple, `Z+` adicias la elementojn ĉe la samaj pozicioj:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Ĉi tie, la zipa meta-operatoro laboras kun la operatoro `+`. Ĝi kalkulas `1 + 10`, `2 + 20` kaj `3 + 30`. Same, `Z*` multobligas la elementojn ĉe la samaj pozicioj:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Kaj `Z~` kunigas la ĉenojn ĉe la samaj pozicioj:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
