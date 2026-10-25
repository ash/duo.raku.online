---
title: Ekskludante finojn
---

{% include menu.html %}

Vi povas preterlasi unu finon de la intervalo, aŭ ambaŭ finojn. Por tio, aldonu la karakteron `^` al la intervala operatoro. Tiel vi ricevas tri pliajn operatorojn. La komentoj montras la nombrojn, kiujn donas ĉiu intervalo.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

La supraj kazoj estas simplaj. En tiaj kazoj, vi povas preterlasi la spacojn ĉirkaŭ la intervala operatoro:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Iuj intervaloj komenciĝas per 0, ekzemple, `0..^5`. Estas mallonga maniero skribi tian intervalon: `^5`.

{% include nav.html %}
