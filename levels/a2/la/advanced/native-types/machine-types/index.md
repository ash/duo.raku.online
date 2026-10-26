---
title: Typi machinae
translations_gpt:
---

{% include menu.html %}

Typi nativi nomina litteris minusculis habent: `int`, `num`, et `str`. Variabilem cum eis declaras sicut cum `Int` vel `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Valor nativus directe registro vel verbo machinae respondet. Haec sunt parva loca pro datis intra computatrum. Valor normalis Raku obiectum involucrum circa se habet. Valor nativus nullum involucrum habet. Itaque typi nativi celeriores sunt et minus memoriae occupant. Hoc in magnis indicibus magni momenti est. Etiam in brevibus cyclis qui multum computant magni momenti est.

Unam rem statim scire debes. Variabilis nativa numquam indefinita est. Variabilis ordinaria `Int` indefinita incipit. `say` eam ut `(Int)` ostendit. Sed nativus `int` a **nulla** incipit:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Idem verum est de indicibus nativis. Ut unum declares, typum nativum ante variabilem `@` scribe:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Talis index elementa sua ut simplices integros machinae servat. Non sunt plena obiecta `Int`. Itaque index minus memoriae adhibet. Valorem nativum de typo eius interrogare potes. Tum Raku eum automatice in typum plenum respondentem ponit. Hoc _involvere_ vocamus. Ideo `(my int $b).WHAT` ostendit `(Int)`.

{% include nav.html %}
