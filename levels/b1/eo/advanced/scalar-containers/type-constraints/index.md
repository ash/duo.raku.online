---
title: Tipaj limigoj
---

{% include menu.html %}

En la [parto Bazaĵoj](/eo/essentials/typed-variables/type-constraints/), vi donis tipojn al variabloj per tipaj limigoj. Gravas noti, ke ĝuste la _ujo_ kontrolas ĉi tiun regulon. Ĝi decidas, kiujn valorojn ĝi povas akcepti.

Ĉi tiu deklaro kreas skalaran ujon, kiu povas teni nur entjerojn:

```raku
my Int $int;
```

Tipigita ujo akceptas nur valorojn, kiuj konvenas al ĝia tipo. Do ĉiuj ĉi tiuj asignoj estas en ordo:

```raku
my Int $int;

$int = 123;       # rekte entjero
say $int;

$int = 100 + 23;  # la rezulto estas entjero
say $int;

$int = '123'.Int; # ĉeno konvertita al entjero
say $int;
```

Raku ne ŝanĝas la tipon aŭtomate ĉi tie. En Raku, nombro kun decimala punkto estas `Rat`. Do vi ne povas asigni ĝin:

```raku
my Int $int;
$int = 123.45;
```

Vi ricevas eraron jam dum kompiltempo:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Por eviti la eraron, konvertu la valoron mem:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Ne lasu la du punktojn en `123.45.Int` konfuzi vin. La unua estas la decimala punkto. La dua vokas la metodon `Int` sur la racionala valoro, kiu estas `Rat`.

{% include nav.html %}
