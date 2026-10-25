---
title: '`if` sectiones'
---

{% include menu.html %}

`if` est probatio condicionalis. Condicionem probat. Si condicio `True` est, `if` clausulam codicis exsequitur.

```raku
if 10 > 4 {
    say 'Mathematica operatur!';
}
```

Non necesse est condicionem in uncis rotundis ponere. Sed potes, si vis.

Scilicet variabiles in probationibus adhibere potes:

```raku
my $vexillum = False;
if $vexillum {
    # . . . aliquid fac
}
```

Interdum duae aut plures probationes eandem variabilem adhibent. Tum comparationes ut catenam scribere potes:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Responsum rectum $x datum est.";
}
```

Interdum condicio `False` est. Tum Raku clausulam codicis non exsequitur. Programma simpliciter pergit.

```raku
say 'Incipe';
if False {
    say 'Hoc numquam imprimetur.';
}
say 'Finis';
```

Hoc programma solum `Incipe` et `Finis` imprimit.

{% include nav.html %}
