---
title: Ekskludante finojn
---

{% include menu.html %}

Vi povas ekskludi unu finon de intervalo, aŭ ambaŭ finojn. Por fari tion, aldonu la karakteron `^` al la intervala operatoro. Tiel vi povas konstrui tri pliajn operatorojn. La komentoj listigas la nombrojn, kiujn ĉiu intervalo generas.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

En simplaj kazoj kiel ĉi tiuj, vi povas preterlasi la spacojn ĉirkaŭ la operatoro:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Por intervalo, kiu komenciĝas per 0, kiel `0..^5`, estas mallonga formo: `^5`.

{% include nav.html %}
