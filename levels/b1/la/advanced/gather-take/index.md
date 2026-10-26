---
title: '`gather` et `take`'
---

{% include menu.html %}

Par `gather` et `take` est modus flexibilis ad indicem construendum. Codicem intra copiam `gather` ponis. Quotiens hic codex `take` vocat, valor in indicem it quem `gather` reddit.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Tres vocationes `take` tres valores dant, et `gather` eos in indicem colligit. Hic index in `@result` servatur.

Par vere validum est cum vocationes `take` per codicem ordinarium sparsae sunt. Exemplum est ansa cum condicione. Tum index solum valores habet quos capere elegisti:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Hic ansa per numeros ab 1 ad 10 it. Sed soli pares capiuntur. Itaque in fine `@evens` continet `2, 4, 6, 8, 10`. Operator `%%` probat num numerus aequaliter dividatur.

Haec divisio operis est quod `gather`/`take` tam utile facit. Codex circa id decernit _quando_ valorem producat. Et `gather` quiete colligit quidquid capitur.

{% include nav.html %}
