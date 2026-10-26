---
title: Spatia nominum et our
translations_gpt:
---

{% include menu.html %}

Declarator `our` est quod nomen in spatio nominum suo visibile facit. Variabilis cum `my` declarata lexicalis est, id est privata suo blocco. Variabilis cum `our` declarata etiam variabilis fasciculi est. Eam ab extra per viam `::` attingere potes:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` operatur quia `count` cum `our` declarata est. Sed `$Counter::secret` non operaretur, quia `secret` lexicalis est.

Spatia nominum **nidificari** possunt, id est unum intra alterum esse potest. Fasciculus intra fasciculum longiorem viam `::` dat:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Nomen plenum `$Outer::Inner::val` ab exteriore spatio nominum in interius ducit. Inde ad variabilem ducit. Sic exacte bibliotheca ordinaria disposita est: nomina ut `IO::Socket::INET` sunt spatia nominum nidificata. Moduli tui quoque hoc modo partes suas sub uno nomine summo colligunt.

{% include nav.html %}
