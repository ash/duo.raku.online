---
title: Nombra, ĉena kaj Boolea kunteksto
---

{% include menu.html %}

Tri kuntekstoj estas tre oftaj. Ili igas valoron konduti kiel nombro, ĉeno aŭ bulea valoro. Por ĉiu el ili, ekzistas prefiksa operatoro, kiu rekte agordas la kuntekston:

* `+` — nombra kunteksto
* `~` — ĉena kunteksto
* `?` — bulea kunteksto

Kun tabelo, `+` donas ĝian longon, kaj `~` donas ĝiajn elementojn kunigitajn per spacoj. `?` montras, ĉu la tabelo entute havas elementojn:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Malplena tabelo donas `0` en nombra kunteksto kaj `False` en bulea kunteksto:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Vi ne ĉiam bezonas mem skribi ĉi tiujn operatorojn. Raku povas agordi la ĝustan kuntekston por vi. Aritmetiko metas siajn valorojn en nombran kuntekston, kaj kunigo de ĉenoj metas ilin en ĉenan kuntekston. `if`, `while`, kaj `and`/`or` metas sian kondiĉon en bulean kuntekston:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Do `if @array { … }` funkcias ĝuste tiel, kiel vi atendus. Tabelo, kiu ne estas malplena, estas vera. La prefiksaj operatoroj estas maniero rekte peti la samajn konvertojn.

Kune kun postfiksa `if`, tio ebligas al vi skribi mallongan kaj klaran kodon:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
