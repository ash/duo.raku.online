---
title: Array
translations_gpt:
---

{% include menu.html %}

Ordo est continens ordinatus. Quodque elementum ordinis quoque continens scalaris est.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

Sigillum `@` ostendit: variabilis ut obiectum `Positional` operatur. Itaque quodque elementum per indicem suum accipere potes:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Quodque elementum continens scalaris est. Itaque novum valorem ei assignare potes. Hoc sicut cum variabili scalari normali operatur:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

Etiam valorem typi diversi assignare potes. Exempli gratia:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Ideo ordines _mutabiles_ sunt. Hoc significat: eos mutare potes. Quaeque positio in ordine continens est. Novum valorem accipere potest. [Indices](/la/advanced/ordered-containers/lists) diversi sunt. Hoc in themate sequenti videbis.

{% include nav.html %}
