---
title: 'Solvo: Divido per subtraho'
---

{% include menu.html %}

Divido estas nur subtraho, farata multajn fojojn. La programo havas `while` buklon, kiu subtrahas `$b` de `$a`. Ĝi ripetas tion, dum `$a` ankoraŭ ne estas malpli ol `$b`. La variablo `$n` kalkulas la rondojn de la buklo. Ĉi tiu nombro estas ankaŭ la rezulto.

## Kodo

Jen la kompleta programo:

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

Poste provu aliajn valorojn. Ekzemple, donu al `$b` la valoron `20` kaj kontrolu, ke la rezulto estas ĝusta:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
