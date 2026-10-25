---
title: '`if` sectiones'
---

{% include menu.html %}

Probatio condicionalis `if` condicionem spectat. Cum condicio `True` est, clausula codicis currit.

```raku
if 10 > 4 {
    say 'Mathematica operatur!';
}
```

Nota quod non necesse est condicionem in parenthesibus ponere. Sed potes, si vis.

Scilicet libenter variabiles in probationibus adhibere potes:

```raku
my $vexillum = False;
if $vexillum {
    # . . . aliquid fac
}
```

Si plures probationes eandem variabilem adhibent, comparationes in catenam ponere potes:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Responsum rectum $x datum est.";
}
```

Si condicio non impletur, clausula codicis eius non currit. Tum programma more solito pergit.

```raku
say 'Incipe';
if False {
    say 'Hoc numquam imprimetur.';
}
say 'Finis';
```

Hoc programma solum `Incipe` et `Finis` imprimit.;

{% include nav.html %}
