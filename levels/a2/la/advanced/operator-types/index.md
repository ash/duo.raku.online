---
title: Genera operatorum Raku
translations_gpt:
---

{% include menu.html %}

Multos operatores iam cognoscis, ut `+`, `~`, et `++`. Operator cum valoribus operatur. Hi valores sunt operandi eius. Raku operatores in categorias dividit. Categoria est grex. Categoria pendet ab eo, _ubi_ operator iuxta operandos stat. Postea operatores tuos facies. Tum categoriae te iuvabunt.

## `prefix`

Operator praefixus unum operandum habet. Venit _ante_ hunc operandum:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Hic `-` signum numeri mutat. Operator `?` valorem in `True` vel `False` convertit. Hic est valor eius Booleanus.

## `infix`

Operator infixus _inter_ duos operandos stat. Multos operatores pro numeris et chordis cognoscis. Plerique ex eis infixi sunt:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Operator infixus non semper symbolum est. Etiam verbum esse potest. Sume operatorem `gcd` ex sectione de [numeris integris](/la/advanced/integers). Operator infixus est. Nomen eius inter duos operandos scribis:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Operator postfixus unum operandum habet. Venit _post_ hunc operandum:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` et `postcircumfix`

Operator circumfixus _circum_ operandum suum stat. Specta uncos quadratos qui ordinem faciunt. Hi unci sunt operator circumfixus:

```raku
my @a = [1, 2, 3];
```

Operator postcircumfixus etiam circum aliquid stat. Sed post terminum venit. Terminus est, exempli gratia, variabilis. Subscripta sunt operatores postcircumfixi. Hic subscriptum est `[1]` post `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Nomina sunt `prefix`, `infix`, `postfix`, `circumfix`, et `postcircumfix`. Raku eadem verba adhibet cum [novum operatorem declaras](/la/advanced/user-defined-operators). Hoc postea videbis.

{% include nav.html %}
