---
title: 'Methodus `.raku`'
---

{% include menu.html %}

Tertia methodus repraesentationis est `.raku`. Seriem cum repraesentatione valoris **codici simili** reddit. In casu optimo hanc seriem in programma inserere posses et eundem valorem recipere. Quisque valor in Raku hanc methodum habet.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Nota quod series `'Raku'` cum signis citationis circum se redit. Itaque differentiam inter numerum et seriem cito videre potes. Hoc est exacte genus rei quam requiris dum errores corrigis.

Methodus etiam pro datis compositis operatur, etiam pro structuris insertis:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Quia `.raku` seriem normalem reddit, eam ubicumque series exspectatur adhibere potes. Exempli gratia, eam intra seriem in signis citationis duplicibus ponere potes:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Utere `.raku` cum repraesentationem codici similem ut seriem requiris. Tum eam cum nuntiis tuis componere potes. Mox `dd` introducemus. Hoc instrumentum Rakudo idem genus repraesentationis pro te uno gradu imprimit.

{% include nav.html %}
