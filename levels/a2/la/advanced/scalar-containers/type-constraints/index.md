---
title: Typus limitationes
---

{% include menu.html %}

In [parte Essentialium](/la/essentials/typed-variables/type-constraints/) didicisti variabili typum dare. Hoc cum restrictione typi fecisti. Hoc magni momenti est. Hanc regulam _continens_ probat. Ipse eligit valores quos accipit.

Haec declaratio continentem scalarem creat. Solum numeros integros servare potest:

```raku
my Int $int;
```

Continens cum typo solum valores accipit qui typo suo conveniunt. Itaque omnes hae assignationes operantur:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Hoc in casu Raku typum per se non mutat. In Raku numerus cum puncto decimali est valor `Rat`. Itaque eum assignare non potes:

```raku
my Int $int;
$int = 123.45;
```

Errorem tempore compilationis accipis. Hoc est antequam programma currit:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Valorem ipse converte. Tum nullus error est:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

In `123.45.Int` duo puncta sunt. Noli propter ea errare. Primum punctum est punctum decimale. Secundum punctum methodum `Int` vocat. Haec methodus in valore `Rat`, numero rationali, operatur.

{% include nav.html %}
