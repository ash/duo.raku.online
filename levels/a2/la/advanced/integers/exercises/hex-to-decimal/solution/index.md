---
title: 'Solutio: Hexadecimale in decimale'
---

{% include menu.html %}

Hoc modo munus solvere potes.

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

1. Forma radicis `:16<1A>` legit `1A` ut numerum in basi 16. Valor eius est `1 × 16 + 10 = 26`. Nunc variabilis `$n` hunc valorem ut numerum integrum normalem continet.

1. `$n.base(16)` numerum integrum retro in chordam in basi 16 convertit. Eventus iterum est `1A`. Itaque legere in basi et imprimere in basi contraria sunt.

{% include nav.html %}
