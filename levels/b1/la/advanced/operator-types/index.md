---
title: Genera operatorum Raku
translations_gpt:
---

{% include menu.html %}

Iam multos operatores adhibuisti, ut `+`, `~` et `++`. Operandi sunt valores in quibus operator operatur. In Raku operatores in categorias dividuntur secundum locum suum: _ubi_ iuxta operandos stant. Categorias cognoscere te postea iuvabit, cum operatores tuos creabis.

## `prefix`

Operator praefixus _ante_ unicum operandum suum venit:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Hic `-` signum numeri mutat. Operator `?` valorem in Booleanum suum convertit.

## `infix`

Operator infixus _inter_ duos operandos stat. Plerique operatores arithmetici et chordarum quos cognoscis sic operantur:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Non necesse est operatorem infixum symbolum esse. Etiam verbum esse potest. Exempli gratia, operator `gcd` ex sectione de [numeris integris](/la/advanced/integers) operator infixus est. Est nomen quod inter duos operandos eius scribis:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Operator postfixus _post_ unicum operandum suum venit:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` et `postcircumfix`

Operator circumfixus _circum_ operandum suum it. Unci quadrati qui ordinem creant sunt exemplum:

```raku
my @a = [1, 2, 3];
```

Operator postcircumfixus etiam circum aliquid it, sed post terminum venit. Subscriptum, ut `[1]` post `@a`, operator postcircumfixus est:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Haec sunt nomina categoriarum: `prefix`, `infix`, `postfix`, `circumfix` et `postcircumfix`. Ut postea videbis, Raku eadem verba adhibet cum [novum operatorem declaras](/la/advanced/user-defined-operators).

{% include nav.html %}
