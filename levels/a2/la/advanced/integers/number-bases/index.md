---
title: Bases numerorum
---

{% include menu.html %}

Numerum integrum etiam in aliis basibus scribere potes. Basis 10 non necessaria est. Basis 10 est systema decimale. Raku tres alias bases maxime communes novit. Pro eis nihil aliud requiris. Quaeque basis suum praefixum habet:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

In codice quamlibet basem adhibere potes. Valor semper idem numerus integer est. Solus modus scribendi differt.

Pro qualibet alia basi formam `:base<number>` adhibe. Eam formam radicis vocamus:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Etiam in contrariam partem ire potes. Sume numerum et eum in alia basi scribe. Ad hoc methodum `base` voca. Chordam digitorum dat:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
