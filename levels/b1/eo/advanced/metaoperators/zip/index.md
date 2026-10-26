---
title: Zip-metaoperatoroj
translations_gpt:
---

{% include menu.html %}

La zipa meta-operatoro `Z` prenas du aŭ pli da listoj. Ĝi parigas iliajn elementojn laŭ pozicio:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

La rezulto estas listo de grupoj. La unua grupo havas la unuan elementon de ĉiu listo. La sekva grupo havas la duajn elementojn, kaj tiel plu.

Eĉ pli lerte, vi povas kombini `Z` kun operatoro, kiu laboras kun ĉiu paro. Ekzemple, `Z+` adicias la elementojn pozicio post pozicio:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Ĉi tie, la zipa meta-operatoro ĉirkaŭas la operatoron `+`. Ĝi kalkulas `1 + 10`, `2 + 20` kaj `3 + 30`. Same, `Z*` multobligas la respondajn elementojn:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Kaj `Z~` kunigas la respondajn ĉenojn:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
