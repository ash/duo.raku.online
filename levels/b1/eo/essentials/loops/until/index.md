---
title: 'Uzante `until`'
---

{% include menu.html %}

La `until` buklo faras la malon de `while`. Ĝi rulas la blokon de kodo, ĝis la kondiĉo fariĝas `True`. Per aliaj vortoj, ĝi ruliĝas, dum la kondiĉo estas `False`.

Ĉi tio estas la [programo de la antaŭa paĝo](../while), sed nun kun `until` kaj nova kondiĉo:

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

Komparu du programojn, kiuj faras la samon, unu per `while` kaj la alia per `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Kiel vi vidas, ĉiu kondiĉo estas la malo de la alia. Do `while` kaj `until` estas paro same kiel `if` kaj `unless`.

{% include nav.html %}
