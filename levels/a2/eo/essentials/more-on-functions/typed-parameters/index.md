---
title: Tipitaj parametroj
---

{% include menu.html %}

En Raku, parametro de funkcio povas havi tipon. Tiam ĝi prenas nur valorojn de tiu tipo. Ĉi tio estas tre simila al [tipitaj variabloj](/eo/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Nun la argumentoj de la funkcio devas esti entjeroj.

```raku
say add(10, 20);
# say add(pi, e); # Eraro
```

Vi povas pasi nur valorojn de tipo `Int`. Ĉiu alia tipo donas kompila-tempan eraron. Tia eraro okazas antaŭ ol la programo ruliĝas.

```
$ raku t.raku
===SORRY!=== Error while compiling t.raku
Calling add(Num, Num) will never work with declared signature (Int $x, Int $y)
at t.raku:5
------> say ⏏add(pi, e);
```

Notu, ke Raku ne konvertas la tipojn por vi ĉi tie. En aliaj kazoj, tia konverto eblas.

```raku
# say add('3', '4'); # Eraro
say '3' + '4'; # BONE kaj estas 7
```

%%tipblock
## Ĉu ĝi estas kompila-tempa eraro?
Rigardu la komencon de la erarmesaĝo. Ĉu ĝi estas `===SORRY!=== Error while compiling`? Tiam la eraro okazis dum kompila tempo.
%%/tipblock

{% include nav.html %}
