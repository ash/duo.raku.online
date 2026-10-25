---
title: Exclusis extremitatibus
---

{% include menu.html %}

Unum finem intervalli omittere potes, vel ambos fines. Ad hoc, characterem `^` ad operatorem intervalli adde. Sic tres alios operatores accipis. Commentaria numeros ostendunt quos quodque intervallum dat.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

Casus supra simplices sunt. In talibus casibus spatia circa operatorem intervalli omittere potes:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Quaedam intervalla a 0 incipiunt, exempli gratia, `0..^5`. Tale intervallum breviter scribere potes: `^5`.

{% include nav.html %}
