---
title: Redonando resultatum
---

{% include menu.html %}

Functiones saepe aliquid faciunt et etiam eventum reddunt. Exempli gratia, in programmate functionali functiones effectus laterales habere non debent. Imprimere ad consolam est talis effectus lateralis. Sed Raku te hoc facere non prohibet. Videamus quomodo functio valorem reddit. Etiam videbimus quomodo codex vocans eum accipit.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Hic functio `add` duos numeros accipit et summam eorum reddit. Ea `return` explicitum adhibet. Codex vocans valorem redditum sicut quemlibet alium valorem adhibere potest. In programmate supra variabili assignatur.

## Ultimus valor computatus

In Raku `return` explicitum non semper requiritur. Id omittere potes, cum eventus est ultimus valor quem functio computat. Itaque functio nostra `add` simplicior esse potest:

```raku
sub add($x, $y) {
    $x + $y
}
```

Fortasse vidisti lineam in fine punctum-commatum non habere. Non necessarium est, quia haec linea clausulam codicis finit.

Tales parvae et simplices functiones saepe in una sola linea scribuntur. Hoc codicem breviorem facit:

```raku
sub add($x, $y) { $x + $y }
```

## Nullus reditus data

Interdum ex functione redire debes ante finem corporis eius. Si functio nullum eventum reddit, utere `return` solo.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x est supra limitem";
}
```

{% include nav.html %}
