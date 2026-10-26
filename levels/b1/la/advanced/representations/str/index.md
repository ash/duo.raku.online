---
title: 'Methodus `.Str`'
---

{% include menu.html %}

Methodus `.Str` formam **seriei planae** valoris reddit. Raku eam vocat quotiens valorem in *contextu serierum* adhibet. Hoc accidit in `print` et `put`, et cum operatore `~`, qui series iungit. Etiam accidit cum valorem in seriem in signis citationis duplicibus inseris.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Nota quod ordo **sine uncis** rediit. Elementa eius solum spatiis iunguntur. Haec est differentia visibilis a [`.gist`](../gist), quae uncos servat. Compara eas iuxta positas:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Cum ordinem in seriem inseris, Raku `.Str` adhibet. Itaque ordo modo plano ostenditur:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
