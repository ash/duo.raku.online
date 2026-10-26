---
title: Pigritia et alacri
---

{% include menu.html %}

Quidam indices in Raku solum computantur cum elementa eorum requiruntur. Tales indices _pigri_ sunt. Praefixa `lazy` et `eager` sinunt te hoc directe regere.

Praefixum `eager` Raku cogit indicem **totum simul** producere, statim:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Sine `eager`, `map` tamen valores produceret. Sed `eager` curat ut omnes statim computentur, non postea cum opus est.

Praefixum `lazy` contrarium facit. Indicem ut pigrum signat. Tum elementa eius solum producuntur cum codex ea petit. Hoc sinit indicem infinitum esse, saltem in theoria:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Methodus `.is-lazy` hoc confirmat. Index non conabitur omnia sua elementa infinita ante computare.

In hoc tamen exemplo Raku indicem utcumque pigrum faceret. Intervallum sine fine, sicut `1 .. Inf`, iam pigrum est. Itaque `say (1 .. Inf).is-lazy` imprimit `True` sine praefixo. Scribere `lazy` hic nihil mutat. Solum consilium tuum clare ostendit. Praefixum vere utile est pro indice quem Raku aliter impigre computaret. Cum `lazy` talem indicem pigrum facere potes.

Plerumque Raku per se bene eligit. Intervalla et sequentiae pigra sunt, et simplex assignatio ad ordinem impigra est. Haec praefixa adhibe cum illam electionem mutare debes. Adhibe `eager` ut computatio sumptuosa nunc fiat. Adhibe `lazy` ut computationem differas quae magna vel sine fine esse potest.

{% include nav.html %}
