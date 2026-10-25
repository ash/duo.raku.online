---
title: Konvertante tipojn kun prefiksaj operatoroj
---

{% include menu.html %}

Alia maniero ŝanĝi la tipon de objekto estas uzi prefiksajn operatorojn. Tiuj estas operatoroj de nur unu karaktero. Vi metas ilin rekte antaŭ la valoron (aŭ variablon).

`~` | Ŝnura devigo
`+` | Nombra devigo
`?` | Boolea devigo

Jen ekzemplo, kiu kreas Boolean valoron el entjero:

```raku
say ?42; # True
```

Konverti al ŝnuro estas simila:

```raku
my $n = -30;
my $s = ~$n;
say $s.chars; # 3, ĉar "-30" havas 3 karakterojn
```

Notu, ke ĉe nombra konvertado, la tipo de la rezulto dependas de la nombro. Komparu la sekvajn konvertojn el ŝnuroj:

```raku
say (+'100').WHAT;   # (Int)
say (+'3.14').WHAT;  # (Rat)
say (+'27E-1').WHAT; # (Num)
```

Por konverti al Boolea valoro, vi ankaŭ povas uzi rutinon nomatan `so`. Ĝi funkcias kiel prefiksa operatoro aŭ kiel metodo:

```raku
my $value = 42;
say so $value; # True
say $value.so; # True
```

{% include nav.html %}
