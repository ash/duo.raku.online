---
title: Spatia nominum et our
translations_gpt:
---

{% include menu.html %}

Verbum `our` aliquid in spatio nominum suo visibile facit. Variabilis cum `my` lexicalis est. Privata suo blocco est. Variabilis cum `our` etiam variabilis fasciculi est. Ad eam ab extra per viam `::` pervenire potes:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` operatur. Variabilis `count` `our` habet. Sed `$Counter::secret` non operatur. Variabilis `secret` lexicalis est.

Spatia nominum **nidificari** possunt. Hoc significat: unum spatium nominum intra alterum est. Fasciculus intra fasciculum longiorem viam `::` facit:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Nomen plenum `$Outer::Inner::val` est sicut via. Ab exteriore spatio nominum in interius it. Deinde ad variabilem it. Bibliotheca ordinaria exacte hanc structuram adhibet. Nomina ut `IO::Socket::INET` sunt spatia nominum nidificata. Moduli tui quoque sic operari possunt. Omnes partes suas sub uno nomine summo servant.

{% include nav.html %}
