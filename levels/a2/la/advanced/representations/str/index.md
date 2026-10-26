---
title: 'Methodus `.Str`'
---

{% include menu.html %}

Methodus `.Str` formam **seriei planae** valoris reddit. Raku eam vocat cum valorem ut seriem requirit. Hoc *contextum serierum* vocamus. `print` et `put` eam vocant. Operator `~` quoque eam vocat. Hic operator series iungit. Etiam pro valoribus intra series in signis citationis duplicibus operatur.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Nota: ordo **sine uncis** redit. Inter elementa eius solum spatia sunt. Hic differentiam a [`.gist`](../gist) videre potes. Methodus `.gist` uncos servat. Compara duas methodos iuxta:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Valor intra seriem in signis citationis duplicibus `.Str` adhibet. Itaque ordo intra seriem modo plano apparet:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
