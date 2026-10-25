---
title: 'Utendo `repeat`'
---

{% include menu.html %}

Clausula `while` vel `until` fortasse numquam currit, si condicio ab initio `False` est. Clausula `repeat` contra semper saltem semel currit. Eius condicio post clausulam inspicitur. Ad probationem eadem verba adhibes, `while` vel `until`.

Aspice hoc programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Intra numerum: ';
    say "Intrasti $x.";
} while $x <= 10;
say "$x maior est quam 10.";
```

Variabilis `$x` a `100` incipit. Condicio `while` inspicit an `$x` minor quam `10` vel aequalis sit. Cum hoc valore, condicio iam `False` est, sed clausula tamen primum semel currit.

```console
$ raku t.raku
Intra numerum: 10
Intrasti 10.
Intra numerum: 20
Intrasti 20.
20 maior est quam 10.
```

Nunc programma mutemus ut `until` adhibeat.

```raku
my $x = 0;
repeat {
    $x = prompt 'Intra numerum: ';
    say "Intrasti $x.";
} until $x > 10;
say "$x maior est quam 10.";
```

Curre id ut inspicias an operetur sicut exspectas:

```console
$ raku t.raku
Intra numerum: 5
Intrasti 5.
Intra numerum: 15
Intrasti 15.
15 maior est quam 10.
```

{% include nav.html %}
