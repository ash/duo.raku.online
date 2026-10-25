---
title: 'Solutio: Digital gradus'
---

{% include menu.html %}

Programma duos gyros et duas amplitudines utitur.

## Codex

Hic est unus modus solvendi:

```raku
my $size = prompt 'Magnitudinem inserere: ';

for 1..$size -> $n {
    .print for 1..$n;
    print "\n";
}
```

🦋 Inveni codicem fontem in archivo [digital-stairs.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/digital-stairs.raku).

## Exitus

Curre programma et magnitudinem insere:

```console
$ raku exercises/loops/digital-stairs.raku
Magnitudinem inserere: 7
1
12
123
1234
12345
123456
1234567
```

## Commentarium

Vide quomodo programma quemque digitum imprimit:

```raku
.print for 1..$n;
```

Potes `print` ut methodum vocare, sicut `say`. Hic programma id in [variabili thematis](/la/essentials/loops/topic) `$_` vocat.

{% include nav.html %}
