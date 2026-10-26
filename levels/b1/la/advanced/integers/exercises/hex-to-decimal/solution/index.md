---
title: 'Solutio: Hexadecimale in decimale'
---

{% include menu.html %}

Hic est una solutio possibilis.

## Codex

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Inveni codicem fontem in archivo [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Exitus

```
26
1A
```

## Commentarii

1. Forma radicis `:16<1A>` legit `1A` ut numerum basis 16. Hoc est `1 × 16 + 10 = 26`. Nunc variabilis `$n` numerum integrum normalem continet.

1. `$n.base(16)` illum numerum integrum retro in chordam basis 16 convertit, quae iterum `1A` dat. Hoc confirmat legere in basi et imprimere in basi operationes contrarias esse.

{% include nav.html %}
