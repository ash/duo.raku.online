---
title: 'Solvo: Divido per subtraho'
---

{% include menu.html %}

Divido estas ripetata subtraho. La programo havas `while` buklon, kiu subtrahas `$b` de `$a` kaj ripetas tion, dum la nuna valoro de `$a` ne estas malpli ol `$b`. La variablo `$n` kalkulas la iteraciojn, kaj ĝi estas ankaŭ la rezulto, kiun ni bezonas.

## Kodo

Jen la plena programo:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Trovu la programon en la dosiero [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Eligo

Rulu la programon kelkajn fojojn. Komencu per la donitaj valoroj, kiuj dividiĝas ekzakte:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Poste provu, ekzemple, ŝanĝi `$b` al `20`, kaj kontrolu, ke la rezulto estas ĝusta:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
