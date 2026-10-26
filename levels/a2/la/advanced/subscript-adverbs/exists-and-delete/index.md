---
title: Exists et delete
---

{% include menu.html %}

Adverbium `:exists` subscriptum in quaestionem vertit. Estne valor sub hac clave vel indice? Responsum est `True` aut `False`. Adverbium valorem non obtinet:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:exists; # True
say %h<plum>:exists;  # False
```

Hoc modo clavem recte probas. Potes etiam simpliciter `%h<plum>` legere. Sed tum valorem indefinitum accipis. Vel, cum quibusdam datis, differentiam videre non potes. Estne clavis "absens"? An est "praesens sed indefinita"?

Adverbium `:delete` introitum removet. Valorem introitus reddit:

```raku
my %h = apple => 1, pear => 2;

say %h<apple>:delete; # 1
say %h.keys;          # (pear)
say %h;               # {pear => 2}
```

Introitus `apple` abest. Valorem eius `1` recipis. Hunc valorem adhibere potes.

Ambo adverbia etiam cum ordinibus operantur. Ibi indicem adhibes:

```raku
my @a = 10, 20, 30;

say @a[1]:exists; # True
say @a[5]:exists; # False

say @a[1]:delete; # 20
say @a[1]:exists; # False
```

Elementum e medio removes. Qualis tum est ordo? Hic est responsum:

```raku
say @a; # [10 (Any) 30]
```

Itaque unam notationem adhibes, et semper eodem modo operatur. Cum ea de continenti quaerere potes. Etiam continens in loco mutare potes. Methodis separatis ad hoc non eges.

{% include nav.html %}
