---
title: Integri
---

{% include menu.html %}

Numeros integros iam ab ipso initio cursus adhibuisti. Numeri integri sunt numeri sine fractionibus. Haec sectio aliquas eorum proprietates ostendit. Primo has proprietates fortasse non vides.

Maxima proprietas est _praecisio arbitraria_. Numerus integer in Raku nullum numerum fixum bytorum habet. Itaque numquam superfluit. In superfluxu numerus nimis magnus fit. Tum tacite falsus fit. Si satis memoriae est, numerus integer tam magnus esse potest quam opus est:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Hic valor exactus est. Raku eum non rotundat. Idem verum est cum magnos numeros multiplicas. Exempli gratia, Raku factorialem numeri 50 exacte invenit:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Longos numeros in codice difficile legis. Itaque digitos cum underscores in greges dividere potes. Compilator underscores neglegit:

```raku
say 1_000_000; # 1000000
```

Proxima themata docent numeros integros in aliis basibus scribere. Basis 10 non sola est. Etiam aliquas methodos utiles pro numeris integris ostendunt.

{% include nav.html %}
