---
title: Convertendo generibus utendo coercitionis methodis
---

{% include menu.html %}

Valorem ad alium typum convertere potes. Aliud verbum pro hoc est _coercere_. Ad hoc methodum voca. Nomen eius est nomen generis datorum. Exempli gratia, converte stringam in integrum:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

Saepe non necesse est valores ipse convertere. Raku id pro te facit. Hic codex recte et ut exspectas operatur:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

Duae variabiles, `$a` et `$b`, stringas continent. Sed expressio eas cum `+` addit. Itaque Raku hic ambas stringas in integros convertit. Deinde `$c` quoque integrum accipit. In ultima linea, Raku hanc variabilem in stringa interpolat. Ad hoc Raku numerum in characteres digitorum vertit.

{% include nav.html %}
