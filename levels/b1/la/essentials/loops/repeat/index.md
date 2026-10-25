---
title: 'Utendo `repeat`'
---

{% include menu.html %}

Clausulae `while` et `until` fortasse numquam currunt si condicio initio `False` est. Clausula `repeat` contra semper saltem semel currit. Condicio post clausulam codicis inspicitur. Ad probationem eadem verba `while` vel `until` adhibes.

Specta hoc programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Intra numerum: ';
    say "Intrasti $x.";
} while $x <= 10;
say "$x maior est quam 10.";
```

Variabilis `$x` a valore `100` incipit, et condicio `while` inspicit utrum `$x` minor quam `10` an ei aequalis sit. Cum hoc valore, condicio iam `False` est, sed clausula codicis tamen primum semel currit.

```console
$ raku t.raku
Intra numerum: 10
Intrasti 10.
Intra numerum: 20
Intrasti 20.
20 maior est quam 10.
```

Mutemus programma ut potius `until` adhibeat.

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
