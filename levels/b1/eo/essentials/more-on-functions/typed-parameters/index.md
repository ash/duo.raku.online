---
title: Tipitaj parametroj
---

{% include menu.html %}

En Raku, vi povas limigi parametrojn de funkcioj al tipo. Ĉi tio estas tre simila al [tipitaj variabloj](/eo/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Nun la funkcio postulas, ke ĝiaj argumentoj estu entjeroj.

```raku
say add(10, 20);
# say add(pi, e); # Eraro
```

Pasi valoron de iu ajn alia tipo ol `Int` kaŭzas kompila-tempan eraron.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Notu, ke Raku ne aŭtomate konvertos la tipojn ĉi tie. En aliaj kazoj, ĝi povas fari tian konverton.

```raku
# say add('3', '4'); # Eraro
say '3' + '4'; # BONE kaj estas 7
```

%%tipblock
## Kiel scii, ĉu ĝi estas kompila-tempa eraro
Se la erarmesaĝo komenciĝas per `===SORRY!=== Error while compiling`, la eraro okazis dum kompila tempo.
%%/tipblock

{% include nav.html %}
