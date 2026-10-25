---
title: 'Utendo `until`'
---

{% include menu.html %}

Ansa `until` contraria est ansae `while`. Clausulam codicis exsequitur donec condicio est `True`. Itaque currit dum condicio est `False`.

Hic est iterum [programma ex pagina priore](../while). Nunc `until` et novam condicionem habet:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Intra numerum, qui non est maior quam 10: ';
    say "Intrasti $x.";
}
say "$x est maior quam 10.";
```

Curre programma et vide quid imprimat:

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

Haec duo programmata idem faciunt. Unum `while` habet, alterum `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Specta duas condiciones. Una contraria est alteri. `while` et `until` par sunt, sicut `if` et `unless`.

{% include nav.html %}
