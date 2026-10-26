---
title: 'Solutio: Duas comprobationes planificare'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
use Test;

plan 2;

my @sorted = (3, 1, 2).sort;
is-deeply @sorted, [1, 2, 3], 'sorted';

is 10 % 3, 1, 'remainder';
```

🦋 Inveni codicem fontem in archivo [test-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/testing/test-a-list.raku).

## Exitus

```
1..2
ok 1 - sorted
ok 2 - remainder
```

## Commentarii

1. `plan 2` numerum dat antequam ulla probatio currit, itaque linea `1..2` prima venit. Si archivum deinde alium numerum probationum curreret, series probationum deficeret. `done-testing` tibi hanc custodiam dare non potest.

1. `is-deeply` verificat duas series exacte aequales esse, generibus inclusis. Series `3, 1, 2` ordinata dat `1, 2, 3`, quod convenit.

1. `is` duos valores de aequalitate simplici comparat. Si probatio deficit, utrumque valorem ostendit. Hic `10 % 3` est `1`, qui est valor exspectatus. Itaque secunda probatio quoque transit.

{% include nav.html %}
