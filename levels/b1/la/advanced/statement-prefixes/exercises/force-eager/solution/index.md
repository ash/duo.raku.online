---
title: 'Solutio: Alacrem aestimationem cogere'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 Inveni codicem fontem in archivo [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Exitus

```
True
False
True
```

## Commentarii

1. Intervallum usque ad `Inf` totum simul computari non potest, itaque pigrum est. `.is-lazy` reddit `True`.

1. Praefixum `eager` Raku cogit indicem statim producere. Itaque resultatum non iam pigrum est. `.is-lazy` reddit `False`. Hoc directe contrarium est signo `lazy` in indice.

1. Noli `eager` cum intervallo sine fine adhibere. `eager 1 .. Inf` conatur omne elementum statim computare. Itaque programma simpliciter pendet et plus plusque memoriae consumit donec interficitur. `eager` tutum est solum cum indicibus quos finitos esse scis.

1. Contrarium quoque operatur. `lazy 1..3` etiam breve, finitum intervallum ut pigrum signat, itaque `.is-lazy` reddit `True`. Praefixum signum pigritiae ponit, quamvis parvus index sit. Index non debet infinitus esse ut piger sit.

{% include nav.html %}
