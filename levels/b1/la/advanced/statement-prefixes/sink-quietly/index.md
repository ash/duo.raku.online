---
title: sink et quietly
---

{% include menu.html %}

Duo alia praefixa codicem propter effectus eius currunt, non propter valorem.

Praefixum `sink` aliquid in _contextu sink_ currit, id est solum propter effectus laterales. Resultatum abicitur. Hoc utile est cum operationem pigram currere cogere vis:

```raku
sink (1..3).map({ print "$_ " });
print "\n"; # 1 2 3
```

Hic `map` solum propter impressionem quam facit currit. `sink` curat ut revera currat, deinde indicem resultantem abicit. Si nihil eam cogit, `map` pigra fortasse omnino non curreret. Hoc fieri potest cum resultatum eius numquam adhibetur.

Praefixum `quietly` copiam cum **admonitionibus exstinctis** currit. Codex qui plerumque admonitionem ad fluxum errorum imprimit tacitus manet:

```raku
my $value;
quietly {
    say $value + 1; # 1, with no "uninitialized value" warning
}
```

Si `1` ad `$value` indefinitum addis, plerumque admonitio de valore non initializato oritur. Intra `quietly` haec admonitio celatur. Eo utere cum scis aliquem codicem admonere, et strepitum non vis. Sed raro eo utere, quia admonitiones plerumque verum errorem indicant.

{% include nav.html %}
