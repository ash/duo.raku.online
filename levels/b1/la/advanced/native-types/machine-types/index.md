---
title: Typi machinae
translations_gpt:
---

{% include menu.html %}

Nomina typorum nativorum minuscula sunt: `int`, `num` et `str`. Eos adhibes ut variabilem declares, sicut `Int` vel `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Valor nativus directe registro vel verbo machinae respondet. Nullum obiectum involucrum habet, quod valor normalis Raku semper habet. Hoc typos nativos celeriores et minores in memoria facit. Hoc magni momenti est in brevibus cyclis qui multa computant, et in magnis indicibus.

Unam rem statim scire debes: variabilis nativa numquam indefinita esse potest. Variabilis ordinaria `Int` ut indefinitum `(Int)` incipit. Nativus `int` autem a **nulla** incipit:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Idem verum est de indicibus nativis. Eos declaras si typum nativum ante variabilem `@` ponis:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Talis index elementa sua ut integros crudos machinae servat, non ut obiecta involuta `Int`. Itaque minus memoriae adhibet. Cum valorem nativum de se ipso interrogas, Raku eum automatice _involvit_. Valorem in typum plenum respondentem ponit. Ideo `(my int $b).WHAT` ostendit `(Int)`.

{% include nav.html %}
