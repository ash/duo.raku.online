---
title: Nombra, ĉena kaj Boolea kunteksto
---

{% include menu.html %}

Tri kuntekstoj estas tre oftaj. En la unua, valoro agas kiel nombro. En la dua, ĝi agas kiel ĉeno. En la tria, ĝi agas kiel `True` aŭ `False`. Ĉiu el tiuj kuntekstoj havas prefiksan operatoron. La operatoro staras antaŭ la valoro. Ĝi rekte agordas la kuntekston:

* `+` — nombra kunteksto: la valoro agas kiel nombro
* `~` — ĉena kunteksto: la valoro agas kiel ĉeno
* `?` — bulea kunteksto: la valoro agas kiel `True` aŭ `False`

Uzu ilin kun tabelo. `+` donas la longon de la tabelo. `~` donas ĝiajn elementojn, kun spacoj inter ili. `?` diras al vi, ĉu la tabelo havas iujn elementojn:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Malplena tabelo estas `0` en nombra kunteksto. En bulea kunteksto, ĝi estas `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Vi ne ĉiam devas skribi ĉi tiujn operatorojn. Ofte Raku agordas la ĝustan kuntekston por vi. Aritmetiko metas valorojn en nombran kuntekston. Kunigo de ĉenoj metas ilin en ĉenan kuntekston. Kaj `if`, `while`, `and` kaj `or` metas sian kondiĉon en bulean kuntekston:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Do `if @array { … }` funkcias, kiel vi atendas. Tabelo kun elementoj estas vera. Per la prefiksaj operatoroj, vi mem petas la samajn konvertojn.

Vi ankaŭ povas meti `if` post la deklaro. Tiam la kodo estas mallonga kaj klara:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
