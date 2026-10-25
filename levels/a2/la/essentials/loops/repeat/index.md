---
title: 'Utendo `repeat`'
---

{% include menu.html %}

Ansa `while` vel `until` fortasse omnino non currit. Hoc fit cum condicio initio `False` est. Clausula `repeat` diversa est. Semper saltem semel currit. Raku condicionem post clausulam inspicit. Ad probationem eadem verba adhibes: `while` vel `until`.

Specta hoc programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Intra numerum: ';
    say "Intrasti $x.";
} while $x <= 10;
say "$x maior est quam 10.";
```

Initio, variabilis `$x` est `100`. Condicio `while` inspicit an `$x` sit `10` vel minus. Itaque condicio iam `False` est. Sed clausula codicis tamen semel currit.

```console
$ raku t.raku
Intra numerum: 10
Intrasti 10.
Intra numerum: 20
Intrasti 20.
20 maior est quam 10.
```

Nunc programma cum `until` scribamus.

```raku
my $x = 0;
repeat {
    $x = prompt 'Intra numerum: ';
    say "Intrasti $x.";
} until $x > 10;
say "$x maior est quam 10.";
```

Curre id et resultatum inspice:

```console
$ raku t.raku
Intra numerum: 5
Intrasti 5.
Intra numerum: 15
Intrasti 15.
15 maior est quam 10.
```

{% include nav.html %}
