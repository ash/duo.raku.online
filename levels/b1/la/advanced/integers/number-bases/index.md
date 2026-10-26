---
title: Bases numerorum
---

{% include menu.html %}

In codice tuo non necesse est numeros integros in systemate decimali scribere. Raku tres alias bases maxime communes statim novit. Quaeque earum suum praefixum habet:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

Quamcumque basem in codice adhibes, valor idem numerus integer est. Solum modus quo eum scribis differt.

Pro omnibus aliis basibus est forma radicis `:base<number>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Ut contrario modo procedas, methodum `base` voca. Numerum in alia basi scribit et chordam digitorum reddit:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
