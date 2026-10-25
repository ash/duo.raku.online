---
title: Convertendo generibus utendo coercitionis methodis
---

{% include menu.html %}

Ut valorem ad alium typum convertas, vel _coerceas_, methodum voca. Methodus idem nomen habet ac genus datorum. Exempli gratia, converte stringam in numerum integrum:

```raku
my $howmany = '42';
my $n = $howmany.Int;
say $n;
```

In multis casibus non opus est valores ipse convertere. Raku id opus pro te facit. Codex sequens recte operatur, sicut exspectes:

```raku
my $a = '10';
my $b = '20';
my $c = $a + $b;
say "The result is $c."; # The result is 30.
```

Variabiles `$a` et `$b` stringas continent. Sed in calculo cum `+` adhibentur. Hoc loco ambae stringae in integros convertuntur, itaque `$c` quoque integrum accipit. In ultima linea, variabilis cum integro in stringa interpolatur. Raku facit quod necesse est, ut numerum ut characteres digitorum ostendat.

{% include nav.html %}
