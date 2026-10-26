---
title: Typus limitationes
---

{% include menu.html %}

In [parte Essentialium](/la/essentials/typed-variables/type-constraints/) typos variabilium per restrictiones typorum posuisti. Magni momenti est notare _continentem_ esse qui hanc regulam probat. Ipse constituit quos valores accipere possit.

Haec declaratio continentem scalarem creat qui solum numeros integros servare potest:

```raku
my Int $int;
```

Continens cum typo solum valores accipit qui typo suo conveniunt. Itaque omnes hae assignationes rectae sunt:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Raku typum hic automatice non mutat. In Raku numerus cum puncto decimali est `Rat`. Itaque eum assignare non potes:

```raku
my Int $int;
$int = 123.45;
```

Errorem iam tempore compilationis accipis:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Ut errorem vites, valorem ipse converte:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Ne duo puncta in `123.45.Int` te confundant. Primum est punctum decimale. Secundum methodum `Int` in valore rationali vocat, qui est `Rat`.

{% include nav.html %}
