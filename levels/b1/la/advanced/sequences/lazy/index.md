---
title: Pigrae et infinitae series
translations_gpt:
---

{% include menu.html %}

Series non debet omnes valores suos simul computare. Series in Raku _pigrae_ sunt: quisque valor solum fit cum re vera opus est. Itaque seriem describere potes quae omnino finem non habet.

Ut seriem infinitam scribas, `Inf` ut finem adhibe. Operator `...` laxius ligat quam `=`, itaque Raku primum `=` faceret. Ideo seriem in parenthesibus ponis:

```raku
my $naturals = (1 ... Inf);
```

Sine parenthesibus, `my $naturals = 1 ... Inf` solum `1` variabili assignaret. Deinde seriem separatim construeret. Si Raku seriem infinitam computaret quam nemo adhibet, programma haereret.

Hoc loco nihil computatur. Series valores solum tradit cum eos petis. Methodus `head` primos paucos ex eis sumit:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

Series infinita est, sed solum primi quinque numeri generantur. Sine pigritia programma totam seriem infinitam construere conaretur. Tale programma numquam finiret.

Si series finita est, methodus `tail` potius valores a fine eius sumere potest:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Pigritia tibi permittit duas res separare. Prima est _descriptio_ seriei. Altera est decisio quantum eius adhibeas.

{% include nav.html %}
