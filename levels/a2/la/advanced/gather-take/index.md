---
title: '`gather` et `take`'
---

{% include menu.html %}

`gather` et `take` ut par operantur. Cum eis indicem multis modis construere potes. Codicem in copiam `gather` ponis. Quotiens hic codex `take` vocat, valor in indicem it. Copia `gather` tibi hunc indicem dat.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Tres vocationes `take` tres valores dant. `gather` eos in indicem colligit. Index in `@result` it.

Par utilissimum est cum vocationes `take` in codice ordinario sunt. Exempli gratia, in ansa cum condicione esse possunt. Tum index solum valores habet quos capis:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Hic ansa per numeros ab 1 ad 10 it. Sed codex solum numeros pares capit. Itaque in fine `@evens` habet `2, 4, 6, 8, 10`. Operator `%%` probat num numerus sine reliquo dividatur.

Haec divisio operis `gather`/`take` tam utile facit. Codex circa `take` decernit _quando_ valorem faciat. Et `gather` quiete omnem valorem colligit quem capis.

{% include nav.html %}
