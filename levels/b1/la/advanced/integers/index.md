---
title: Integri
---

{% include menu.html %}

Numeros integros ab ipso initio cursus adhibuisti. Haec sectio aliquas eorum proprietates inspicit quas facile non animadvertis.

Maxima proprietas est quod numeri integri in Raku _praecisionem arbitrariam_ habent. Numerum fixum bytorum non habent. Numquam tacite superfluunt nec falsum eventum dant. Si satis memoriae est, numerus integer tam magnus crescere potest quam opus est:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Hic est valor exactus, non rotundatus. Idem verum est cum magnos numeros multiplicas. Exempli gratia, Raku factorialem numeri 50 exacte computat:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Digitos longorum numerorum cum underscores in greges dividere potes. Sic eos in codice tuo facilius legis. Compilator underscores neglegit:

```raku
say 1_000_000; # 1000000
```

Proxima themata ostendunt quomodo numeros integros in aliis basibus numerorum scribas. Etiam aliquas methodos utiles numerorum integrorum tibi monstrant.

{% include nav.html %}
