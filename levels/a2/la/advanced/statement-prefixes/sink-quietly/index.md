---
title: sink et quietly
---

{% include menu.html %}

Sunt duo alia praefixa. Codicem currunt propter id quod facit. Valor codicis non magni momenti est.

Praefixum `sink` codicem in _contextu sink_ currit. Codex solum propter effectus laterales currit. Raku resultatum abicit. Hoc utile est cum operatione pigra. Cum `sink` eam currere cogis:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Hic `map` solum propter impressionem currimus. Cum `sink` revera currit. Deinde `sink` indicem ex `map` abicit. Si nihil eam cogit, `map` pigra fortasse omnino non currit. Hoc fieri potest cum nemo resultatum eius adhibet.

Praefixum `quietly` copiam currit et **admonitiones eius celat**. Quidam codex plerumque admonitionem ad fluxum errorum imprimit. Intra `quietly` hic codex tacet:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Plerumque Raku admonitionem ostendit cum `1` ad `$value` indefinitum addis. Admonitio de “uninitialized value” est. Intra `quietly` haec admonitio latet. Interdum scis: codex tuus admonitionem dat. Hunc strepitum non vis. Tum `quietly` adhibe. Sed id non saepe adhibe. Admonitio plerumque verum errorem ostendit.

{% include nav.html %}
