---
title: 'Utendo `elsif`'
---

{% include menu.html %}

Adhuc `if` et `else` didicimus. Sed quid si catenam probationum facere vis? Raku saltem duos modos habet ad hoc faciendum. Re vera etiam plures sunt.

Unus modus est catenam clausularum `if`, `elsif`, et `else` adhibere. Nota quomodo `elsif` scribitur. Non est `elseif`, neque est `else if`.

```raku
my $x = prompt 'Intra numerum: ';
if $x > 100 {
    say "$x maior est quam 100.";
}
elsif $x > 50 {
    say "$x maior est quam 50.";
}
elsif $x > 25 {
    say "$x maior est quam 25.";
}
else {
    say "$x est 25 vel minor.";
}
```

Hoc programma tres ramos et tres probationes habet, unam post alteram. Simul ac una ex condicionibus `True` est, clausula codicis respondens currit. Si nulla probatio `True` est, clausula `else` currit.

Hic sunt pauci cursus programmatis ad probandum. Quaeque clausula in uno ex eis currit:

```console
$ raku t.raku
Intra numerum: 120
120 maior est quam 100.

$ raku t.raku
Intra numerum: 75      
75 maior est quam 50.

$ raku t.raku
Intra numerum: 30
30 maior est quam 25.

$ raku t.raku
Intra numerum: 10
10 est 25 vel minor.
```

Alius modus est par [`given` et `when`](/la/advanced/given-when) adhibere, quod postea discemus.

{% include nav.html %}
