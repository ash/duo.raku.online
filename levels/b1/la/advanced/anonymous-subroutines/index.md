---
title: Subprogrammata anonyma
translations_gpt:
---

{% include menu.html %}

Non necesse est subroutinam nomen habere. Subroutina _anonyma_ prorsus similis est ordinariae, sed sine nomine. Plerumque in variabili servatur, ut postea eam vocare possis.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

Variabilis `$double` subroutinam tenet. Tum `$double(5)` eam cum argumento `5` vocat.

## Cuspides acutae

Raku modum breviorem habet idem scribendi: _cuspidem acutam_. Sagitta `->` ante parametros venit. Neque verbo `sub` neque parenthesibus circa eos eges:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Saepissime parva subroutina anonyma hoc modo scribitur.

## Sigillum `&`

Fortasse subroutinam nomine vocare vis, non per variabilem `$`. Tum variabilem cum sigillo `&` declara. Deinde eam sine sigillo vocare potes, prorsus sicut subroutinam ordinariam:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Eam ad aliam functionem tradere

Subroutinam anonymam in variabili servare omnino non necesse est. Ea est tantum valor. Itaque eam recta functioni tradere potes quae talem requirit. Exempla sunt `map`, `grep` vel `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Hic cuspis acuta est subroutina anonyma. `map` eam semel pro quoque elemento vocat. Re vera hoc iam diu facis. Multas clausuras `{ ... }` et `-> $x { ... }` ad `map` et `grep` tradidisti. Quaeque earum parva subroutina anonyma est. Eam ibi scribis ubi opus est, nec prius ei nomen das.

{% include nav.html %}
