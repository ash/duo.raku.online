---
title: 'Utendo `until`'
---

{% include menu.html %}

Ansa `until` contrarium facit atque `while`. Clausulam codicis exsequitur donec condicio fit `True`. Aliis verbis, currit dum condicio est `False`.

Hoc est [programma ex pagina priore](../while), sed nunc cum `until` et nova condicione:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Intra numerum, qui non est maior quam 10: ';
    say "Intrasti $x.";
}
say "$x est maior quam 10.";
```

Curre programma et exitum specta:

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

Compara duo programmata quae idem faciunt, unum cum `while`, alterum cum `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Ut vides, utraque condicio contraria est alteri. Itaque `while` et `until` par sunt eodem modo atque `if` et `unless`.

{% include nav.html %}
