---
title: Pigrae et infinitae series
translations_gpt:
---

{% include menu.html %}

Series non debet omnes valores suos simul computare. Series in Raku _pigrae_ sunt. Raku quemque valorem solum facit cum eo re vera eges. Itaque seriem sine ullo fine describere potes.

Pro serie infinita, `Inf` ut finem adhibe. Raku `=` ante `...` facit. Dicimus: `...` laxius ligat quam `=`. Itaque seriem in parenthesibus pone:

```raku
my $naturals = (1 ... Inf);
```

Specta `my $naturals = 1 ... Inf` sine parenthesibus. Hic variabilis solum `1` accipit. Postea Raku seriem per se construit. Nemo hanc seriem sine fine adhibet. Sed Raku eam computare conatur. Itaque programma haeret et numquam finit.

Adhuc Raku nihil computat. Series tibi valores solum dat cum eos petis. Methodus `head` primos paucos valores sumit:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

Series infinita est. Sed Raku solum primos quinque numeros facit. Sine pigritia programma totam seriem sine fine construere conatur. Tale programma numquam finit.

Series finita finem habet. Pro tali serie methodus `tail` valores a fine sumit:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

Pigritia tibi permittit duas res separatim facere. Primo _descriptionem_ seriei das. Postea decernis quantum eius adhibeas.

{% include nav.html %}
