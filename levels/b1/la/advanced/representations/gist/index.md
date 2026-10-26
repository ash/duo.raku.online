---
title: 'Methodus `.gist`'
---

{% include menu.html %}

Methodus `.gist` repraesentationem valoris **homini amicam** reddit. Haec est forma quam *legere* velles. `say` et `note` hoc ipsum imprimunt, quia `.gist` in quoque argumento vocant.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

Pro valoribus simplicibus gist est solum valor ipse. Pro datis compositis `.gist` aliquid formationis addit, ut structura facile legi possit:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

Obiectum typi est valor qui typum ipsum repraesentat. Gist eius est nomen eius in parenthesibus. Itaque in output facile apparet:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
