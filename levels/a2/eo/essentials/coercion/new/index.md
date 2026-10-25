---
title: Konvertante tipojn uzante konstruistajn formojn
---

{% include menu.html %}

Estas simila maniero. Vi povas fari novan objekton de la necesa tipo. Por tio, voku la konstruiston de la tipo. Konstruisto faras novajn objektojn. Ĝia nomo estas la sama kiel la nomo de la tipo. Ekzemple:

```raku
my $n = Int('1.23E4');
say $n;      # 12300
say $n.WHAT; # (Int)
```

Ĉi tie, la ŝnuro enhavas glitkoman nombron. Raku konvertas ĝin al entjero.

{% include nav.html %}
