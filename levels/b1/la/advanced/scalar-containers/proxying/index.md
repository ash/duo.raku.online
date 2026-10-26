---
title: Procuratio vocationum methodorum
---

{% include menu.html %}

Re vera continens scalaris est obiectum typi `Scalar`. In plerisque casibus continentem ne animadvertis quidem cum scalarem adhibes. De eo cogitare non debes. Imaginari potes te directe cum valoribus in eo laborare.

Hoc operatur quia continens scalaris vocationes methodorum ad valorem suum mittit. Exempli gratia, post `my $lang = 'Raku'` methodum `.chars` in variabili vocare potes:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

Programma `4` imprimit, numerum characterum in serie `'Raku'`. Nunc `.chars` directe in valore seriei voca, non in variabili continentis. Resultatum prorsus idem est:

```raku
say 'Raku'.chars; # 4
```

Aliis verbis, continens tacite vocationem `.chars` ad seriem in eo mittit. Deinde resultatum tibi reddit.

{% include nav.html %}
