---
title: 'Utendo `elsif`'
---

{% include menu.html %}

Nunc `if` et `else` novisti. Sed quid si multas probationes requiris, unam post alteram? Raku saltem duos modos ad hoc habet. Re vera etiam plures habet.

Unus modus est catena clausularum: `if`, `elsif`, et `else`. Specta quomodo `elsif` scribimus. Non est `elseif`. Neque est `else if`.

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

Hoc programma tres ramos habet. Tres probationes habet, unam post alteram. Simul ac una condicio `True` est, Raku clausulam codicis eius exsequitur. Si nulla probatio `True` est, Raku clausulam `else` exsequitur.

Hic sunt pauci cursus programmatis ad probandum. Simul omnes clausulas adhibent:

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

Alius modus est par [`given` et `when`](/la/advanced/given-when). Id postea discimus.

{% include nav.html %}
