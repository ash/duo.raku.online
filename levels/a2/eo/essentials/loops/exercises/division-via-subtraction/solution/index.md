---
title: 'Solvo: Divido per subtraho'
---

{% include menu.html %}

Divido estas subtraho, denove kaj denove. La programo havas `while` buklon. Ĉiun fojon, la buklo deprenas `$b` de `$a`. Ĝi faras tion, dum `$a` ne estas malpli ol `$b`. La variablo `$n` kalkulas la rondojn. Ĉi tiu nombro estas la respondo.

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

Rulu la programon kelkajn fojojn. Komencu per la nombroj en la kodo. Ili dividiĝas sen resto:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Poste provu aliajn nombrojn. Ekzemple, ŝanĝu `$b` al `20`. Kontrolu, ke la rezulto estas ĝusta:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
