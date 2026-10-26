---
title: Pigritia et alacri
---

{% include menu.html %}

Raku quosdam indices solum computat cum elementa eorum requirit. Tales indices _pigri_ sunt. Cum praefixis `lazy` et `eager` hoc ipse regere potes.

Praefixum `eager` Raku cogit indicem **totum simul** producere, nunc statim:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

`map` etiam sine `eager` valores producit. Sed cum `eager` Raku certe omnes statim computat. Non exspectat donec eos requiris.

Praefixum `lazy` contrarium facit. Indicem ut pigrum signat. Tum Raku quodque elementum solum producit cum codex id petit. Itaque index, in theoria, sine fine esse potest:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Methodus `.is-lazy` ostendit: index piger est. Itaque non conatur omnia elementa sua prius computare. Et haec elementa finem non habent.

Sed in hoc exemplo Raku indicem iam per se pigrum facit. Intervallum sine fine, sicut `1 .. Inf`, iam pigrum est. Itaque `say (1 .. Inf).is-lazy` imprimit `True` sine praefixo. Hic `lazy` nihil mutat. Solum voluntatem tuam clare ostendit. Praefixum vere utile est in alio casu. Interdum Raku indicem impigre computat, totum simul. Cum praefixo talem indicem pigrum facere potes.

Plerumque Raku per se bene eligit. Intervalla et sequentiae pigra sunt. Assignatio simplex ad ordinem impigra est. Haec praefixa adhibe cum aliam electionem vis. Adhibe `eager` ut computatio lenta nunc fiat. Adhibe `lazy` ut computationem magnam vel infinitam differas.

{% include nav.html %}
