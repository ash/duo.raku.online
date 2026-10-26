---
title: Tipaj limigoj
---

{% include menu.html %}

En la [parto Bazaĵoj](/eo/essentials/typed-variables/type-constraints/), vi lernis doni tipon al variablo. Vi faris tion per tipa limigo. Jen grava punkto. La _ujo_ kontrolas ĉi tiun regulon. Ĝi decidas, kiujn valorojn ĝi akceptas.

Ĉi tiu deklaro kreas skalaran ujon. Ĝi povas teni nur entjerojn:

```raku
my Int $int;
```

Tipigita ujo akceptas nur valorojn, kiuj konvenas al ĝia tipo. Do ĉiuj ĉi tiuj asignoj funkcias:

```raku
my Int $int;

$int = 123;       # rekte entjero
say $int;

$int = 100 + 23;  # la rezulto estas entjero
say $int;

$int = '123'.Int; # ĉeno konvertita al entjero
say $int;
```

En ĉi tiu kazo, Raku ne ŝanĝas la tipon per si mem. En Raku, nombro kun decimala punkto estas valoro de tipo `Rat`. Do vi ne povas asigni ĝin:

```raku
my Int $int;
$int = 123.45;
```

Vi ricevas la eraron dum kompiltempo. Tio estas antaŭ ol la programo ruliĝas:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Konvertu la valoron mem. Tiam ne estas eraro:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Estas du punktoj en `123.45.Int`. Ne lasu ilin konfuzi vin. La unua punkto estas la decimala punkto. La dua punkto vokas la metodon `Int`. Ĉi tiu metodo laboras sur la valoro `Rat`, racionala nombro.

{% include nav.html %}
