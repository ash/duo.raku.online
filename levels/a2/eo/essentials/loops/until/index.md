---
title: 'Uzante `until`'
---

{% include menu.html %}

La `until` buklo estas la malo de `while`. Ĝi rulas la blokon de kodo, ĝis la kondiĉo fariĝas `True`. Per aliaj vortoj, la buklo ruliĝas, dum la kondiĉo estas `False`.

Jen denove la [programo de la antaŭa paĝo](../while). Nun ĝi uzas `until` kaj novan kondiĉon:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enigu numeron, kiu ne estas pli granda ol 10: ';
    say "Vi enigis $x.";
}
say "$x estas pli granda ol 10.";
```

Rulu la programon kaj rigardu la eligon:

```console
$ raku t.raku 
Enigu numeron, kiu ne estas pli granda ol 10: 10
Vi enigis 10.
Enigu numeron, kiu ne estas pli granda ol 10: 4
Vi enigis 4.
Enigu numeron, kiu ne estas pli granda ol 10: 1
Vi enigis 1.
Enigu numeron, kiu ne estas pli granda ol 10: 20
Vi enigis 20.
20 estas pli granda ol 10.
```

## `until` vs. `while`

Komparu ĉi tiujn du liniojn. Ili faras la samon per `while` kaj `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

La du kondiĉoj estas la malo unu de la alia. Do `while` kaj `until` funkcias kiel paro, same kiel `if` kaj `unless`.

{% include nav.html %}
