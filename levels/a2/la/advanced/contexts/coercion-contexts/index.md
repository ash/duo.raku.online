---
title: Numericus, catenarius, et Booleanus contextus
---

{% include menu.html %}

Tres contextus valde frequentes sunt. In primo valor ut numerus agit. In secundo ut chorda agit. In tertio ut `True` aut `False` agit. Quisque ex his contextibus operatorem praefixum habet. Operator ante valorem stat. Contextum directe ponit:

* `+` — contextus numericus: valor ut numerus agit
* `~` — contextus chordae: valor ut chorda agit
* `?` — contextus Booleanus: valor ut `True` aut `False` agit

Adhibe eos cum ordine. `+` longitudinem ordinis dat. `~` elementa eius dat, cum spatiis inter ea. `?` tibi dicit an ordo ulla elementa habeat:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Ordo vacuus est `0` in contextu numerico. In contextu Booleano est `False`:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Non semper necesse est hos operatores scribere. Saepe Raku rectum contextum pro te ponit. Arithmetica valores in contextum numericum ponit. Coniunctio chordarum valores in contextum chordae ponit. Et `if`, `while`, `and` et `or` condicionem suam in contextum Booleanum ponunt:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Itaque `if @array { … }` operatur ut exspectas. Ordo cum elementis verus est. Cum operatoribus praefixis easdem conversiones ipse petis.

Potes etiam `if` post enuntiatum ponere. Tum codex brevis et clarus est:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
