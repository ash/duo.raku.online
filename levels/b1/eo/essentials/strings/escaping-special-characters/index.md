---
title: Eskapado de specialaj karakteroj
---

{% include menu.html %}

Imagu, ke vi volas presi prezetikedon. Vi tenas la nomon de la produkto kaj ĝian prezon en du skalaj variabloj.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Kiel vi presas la etikedon, se la prezo estas en dolaroj? La eligo devas esti `Electricity costs $3.14`. Sed en duoble-cititaj ŝnuroj, dolarsigno montras, ke variablo devas esti interpolita. Por presi la karakteron `$` mem, vi devas eskapi ĝin:

```raku
say "$product costs \$$price";
```

Kompreneble, vi ankaŭ povas eviti eskapi `$` per ŝnura kunigo:

```raku
say $product ~ ' costs $' ~ $price;
```

Ĉi tiu versio presas ekzakte la saman ŝnuron. Sed interpolado aspektas pli natura kaj estas pli facile legebla. Rimarku la unuoble-cititan ŝnuron `' costs $'`. En ĝi, la karaktero `$` estas nek interpolita nek eskapita. Tio estas la ĉefa diferenco. Specialaj karakteroj en unuoblaj citiloj aperas kiel ili estas.

En duoble-cititaj ŝnuroj, kelkaj pliaj karakteroj havas specialan signifon:

`\$` | Dolarsigno
`\n` | Nova linio
`\r` | Karet-retorno
`\t` | Horizontala tabo
`\"` | Duobla citilo
`\\` | Reenstreko

La speco de citiloj ĉirkaŭ ŝnuro decidas, kiel Raku traktas specialajn karakterojn. Rigardu ĉi tiujn du ekzemplojn:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Se vi rulas ĉi tiun programon, la unua ŝnuro aperas senŝanĝe, en unu linio. Sed la dua ŝnuro estas dividita en du pecojn:

    One\nTwo
    Three
    Four

En duoblaj citiloj, Raku traktas la specialan sekvencon `\n` kiel karakteron de nova linio. En unuoblaj citiloj, ĝi estas nur du ordinaraj karakteroj: `\` kaj `n`.

Estas interesa escepto por `'` kaj `\`. En unuoblaj citiloj, vi povas eskapi unuoblan citilon per `\` antaŭ ĝi:

```raku
say '\''; # '
```

Se unuobla citilo sekvas reenstrekon, vi devas eskapi ankaŭ la reenstrekon:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
