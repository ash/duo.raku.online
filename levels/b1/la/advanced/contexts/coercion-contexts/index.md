---
title: Numericus, catenarius, et Booleanus contextus
---

{% include menu.html %}

Tres contextus valde frequentes sunt. In eis valor se gerit ut numerus, chorda, vel valor Booleanus. Pro quoque eorum est operator praefixus qui contextum directe ponit:

* `+` — contextus numericus
* `~` — contextus chordae
* `?` — contextus Booleanus

Cum ordine, `+` longitudinem eius dat, et `~` elementa eius spatiis coniuncta dat. `?` ostendit an ordo omnino ulla elementa habeat:

```raku
my @a = 1, 2, 3;

say +@a; # 3
say ~@a; # 1 2 3
say ?@a; # True
```

Ordo vacuus `0` dat in contextu numerico et `False` in contextu Booleano:

```raku
my @empty;
say +@empty; # 0
say ?@empty; # False
```

Non semper necesse est hos operatores ipse scribere. Raku rectum contextum pro te ponere potest. Arithmetica valores suos in contextum numericum ponit, et coniunctio chordarum eos in contextum chordae ponit. `if`, `while`, et `and`/`or` condicionem suam in contextum Booleanum ponunt:

```raku
my @a = 1, 2, 3;

say 10 + @a;              # 13, here @a is its length: 3
say 'items: ' ~ @a;       # items: 1 2 3
if @a { say 'not empty' } # not empty
```

Itaque `if @array { … }` operatur prorsus ut exspectas. Ordo qui non vacuus est verus est. Per operatores praefixos easdem conversiones directe petere potes.

Cum postfixo `if`, hoc tibi permittit codicem brevem et clarum scribere:

```raku
say "{+@a} items are there" if @a; # 3 items are there
```

{% include nav.html %}
