---
title: Paria
---

{% include menu.html %}

Par est structura datae quae nomen et valorem simul continet. Unum solum obiectum faciunt, quod in variabili scalari servare potes. Sic par creas:

```raku
my $pair = name => 'Anna';
```

Typus variabilis `$pair` est `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Nomen et valorem seorsum accipere potes per methodos `key` et `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Proprietas gravis parium est quod immutabilia sunt. Hoc significat: pari exstanti novum valorem aut novum nomen dare non potes. Sed certe omnino novum par eidem variabili assignare potes:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subscripting

Est alius modus quo valorem paris legere potes. Id subscribere potes cum nomine clavis eius in uncis angularibus. Sic facis:

```raku
say $pair<name>;
```

Nota quod quotationes circa clavem non requiris, si nulla spatia habet. Si spatia habet, regulae paulo strictiores sunt:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Attende: hoc tempore uncos curvos adhibemus.

{% include nav.html %}
