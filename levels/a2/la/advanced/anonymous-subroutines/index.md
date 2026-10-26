---
title: Subprogrammata anonyma
translations_gpt:
---

{% include menu.html %}

Subroutina nomine non eget. Subroutina sine nomine _anonyma_ est. Eam sicut subroutinam ordinariam scribis, sed sine nomine. Plerumque eam in variabili servas. Tum eam postea vocare potes.

```raku
my $double = sub ($x) {
    $x * 2
};

say $double(5); # 10
```

Variabilis `$double` subroutinam continet. `$double(5)` subroutinam cum argumento `5` vocat.

## Cuspides acutae

In Raku idem brevius scribere potes. Haec est _cuspis acuta_. Sagittam `->` ante parametros habet. Verbum `sub` non necessarium est. Neque parentheses circa parametros necessariae sunt:

```raku
my $double = -> $x {
    $x * 2
};

say $double(5); # 10
```

Sic homines plerumque parvam subroutinam anonymam scribunt.

## Sigillum `&`

Fortasse nomen ad vocationem vis, non variabilem `$`. Tum variabilem cum sigillo `&` crea. Nunc eam sine sigillo vocare potes. Sicut subroutina ordinaria operatur:

```raku
my &triple = -> $x {
    $x * 3
};

say triple(4); # 12
```

## Eam alii functioni dare

Subroutinam anonymam in variabili servare non necesse est. Ea est tantum valor. Itaque eam recta functioni dare potes. Quaedam functiones talem valorem requirunt, exempli gratia `map`, `grep` vel `sort`:

```raku
say (1, 2, 3).map(-> $x { $x * 2 }); # (2 4 6)
```

Hic cuspis acuta est subroutina anonyma. `map` eam semel pro quoque elemento vocat. Re vera hoc iam semper facis. Saepe clausuram `{ ... }` vel `-> $x { ... }` ad `map` et `grep` das. Quaeque earum parva subroutina anonyma est. Eam ibi scribis ubi opus est. Nomen ei prius non das.

{% include nav.html %}
