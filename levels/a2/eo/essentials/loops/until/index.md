---
title: 'Uzante `until`'
---

{% include menu.html %}

La `until` buklo estas la malo de la `while` buklo. Ĝi rulas la blokon de kodo, ĝis la kondiĉo estas `True`. Do ĝi ruliĝas, dum la kondiĉo estas `False`.

Jen denove la [programo de la antaŭa paĝo](../while). Nun ĝi havas `until` kaj novan kondiĉon:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enigu numeron, kiu ne estas pli granda ol 10: ';
    say "Vi enigis $x.";
}
say "$x estas pli granda ol 10.";
```

Rulu la programon kaj vidu, kion ĝi presas:

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

Ĉi tiuj du programoj faras la samon. Unu havas `while`, kaj la alia havas `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Rigardu la du kondiĉojn. Unu estas la malo de la alia. `while` kaj `until` estas paro, kiel `if` kaj `unless`.

{% include nav.html %}
