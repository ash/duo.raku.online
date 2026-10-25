---
title: 'Solvo: Divido per subtraho'
---

{% include menu.html %}

Divido estas subtraho denove kaj denove. La programo havas `while` buklon. La buklo deprenas `$b` de `$a`. Ĝi ripetas tion, dum `$a` ne estas malpli ol `$b`. La variablo `$n` kalkulas la rondojn de la buklo. Ĉi tiu nombro estas ankaŭ la rezulto, kiun ni bezonas.

## Kodo

Jen la tuta programo:

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

Rulu la programon kelkajn fojojn. Unue, uzu la donitajn valorojn. Ili dividiĝas ekzakte:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Poste provu aliajn valorojn. Ekzemple, ŝanĝu `$b` al `20` kaj kontrolu, ke la rezulto estas ĝusta:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
