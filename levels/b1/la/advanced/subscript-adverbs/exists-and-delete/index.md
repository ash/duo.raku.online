---
title: Exists et delete
---

{% include menu.html %}

Adverbium `:exists` subscriptum in quaestionem vertit. Estne valor sub hac clave vel indice? Adverbium valorem Booleanum reddit, sed valorem ipsum non obtinet:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Hic est rectus modus clavem probandi. Si simpliciter `%h<plum>` legis, valorem indefinitum accipis. Secundum data, hoc differentiam inter "absentem" et "praesentem sed indefinitum" celare potest.

Adverbium `:delete` introitum removet et valorem eius tibi reddit:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Introitus `apple` abest. Valorem deletum `1` recipis, itaque eo uti potes.

Ambo adverbia etiam in ordinibus operantur, cum indice:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Quomodo ordo apparet postquam elementum medium remotum est? Hic est responsum:

```raku
say @a; # [10 (Any) 30]
```

Itaque una notatio constans tibi permittit continentia probare et in loco mutare. Methodis separatis ad hoc non eges.

{% include nav.html %}
