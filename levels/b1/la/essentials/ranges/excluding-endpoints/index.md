---
title: Exclusis extremitatibus
---

{% include menu.html %}

Unum finem intervalli excludere potes, vel ambos. Ad hoc faciendum, characterem `^` ad operatorem intervalli adde. Sic tres alios operatores construere potes. Commentaria numeros enumerant quos quodque intervallum generat.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

In casibus simplicibus ut his, spatia circa operatorem omittere potes:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Pro intervallo quod a 0 incipit, ut `0..^5`, est forma brevis: `^5`.

{% include nav.html %}
