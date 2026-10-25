---
title: Konvertante tipojn kun prefiksaj operatoroj
---

{% include menu.html %}

Vi ankaŭ povas ŝanĝi la tipon de objekto per prefiksaj operatoroj. Ĉiu el tiuj operatoroj estas nur unu karaktero. Vi metas ĝin tuj antaŭ valoron aŭ variablon.

`~` | Konvertas al ŝnuro
`+` | Konvertas al nombro
`?` | Konvertas al Boolea valoro

Jen ekzemplo. Ĝi faras Boolean valoron el entjero:

```raku
say ?42; # True
```

Konverti al ŝnuro funkcias same:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, ĉar "-30" havas 3 karakterojn
```

Notu ĉi tion pri konvertado al nombro. La tipo de la rezulto povas esti malsama. Ĝi dependas de la nombro. Komparu ĉi tiujn konvertojn el ŝnuroj:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Por konverti al Boolea valoro, vi ankaŭ povas uzi `so`. Vi povas uzi ĝin kiel prefiksan operatoron. Aŭ vi povas uzi ĝin kiel metodon:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
