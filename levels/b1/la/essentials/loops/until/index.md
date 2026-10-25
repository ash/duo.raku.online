---
title: 'Utendo `until`'
---

{% include menu.html %}

Constructum `until` contrarium est `while`. Clausulam codicis exsequitur donec condicio fit `True` (aliis verbis, dum condicio est `False`).

Hic est [programma ex pagina priore](../while), mutatum ut `until` et novam condicionem adhibeat:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Intra numerum, qui non est maior quam 10: ';
    say "Intrasti $x.";
}
say "$x est maior quam 10.";
```

Curre programmam et inspice exitum:

```console
$ raku t.raku 
Intra numerum, qui non est maior quam 10: 10
Intrasti 10.
Intra numerum, qui non est maior quam 10: 4
Intrasti 4.
Intra numerum, qui non est maior quam 10: 1
Intrasti 1.
Intra numerum, qui non est maior quam 10: 20
Intrasti 20.
20 est maior quam 10.
```

## `until` vs. `while`

Compara duo programmata quae idem faciunt cum `while` et `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Ut vides, utraque condicio contraria est alteri. Ita `while` et `until` eodem modo inter se coniunguntur atque `if` et `unless`.

{% include nav.html %}
