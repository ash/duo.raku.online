---
title: Array
translations_gpt:
---

{% include menu.html %}

Ordo est continens ordinatus, et elementa eius quoque continentes scalares sunt.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Sigillum `@` significat talem variabilem ut obiectum `Positional` se gerere. Hoc tibi permittit subscriptiones adhibere ad elementa singula legenda:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Quodque elementum continens scalaris est, itaque novum valorem ei assignare potes. Hoc eodem modo facis ac cum variabili scalari separata:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Valorem typi diversi quoque assignare potes, exempli gratia:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Hoc est quod ordines _mutabiles_ facit, id est, tales ut eos mutare possis. Quaeque positio est continens qui novum valorem accipere potest. In themate sequenti videbis [indices](/la/advanced/ordered-containers/lists) aliter se gerere.

{% include nav.html %}
