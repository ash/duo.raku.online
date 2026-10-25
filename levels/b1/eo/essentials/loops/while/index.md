---
title: 'Uzante `while`'
---

{% include menu.html %}

La `while` buklo havas Boole-an kondiĉon (`True` aŭ `False`) kaj blokon de kodo. Raku ripetas la blokon _dum_ la kondiĉo estas `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Enigu numeron, kiu ne estas pli granda ol 10: ';
    say "Vi enigis $x.";
}
say "$x estas pli granda ol 10.";
```

La programo petas vin enigi nombron. Se la nombro ne estas pli granda ol 10, la korpo de la buklo ruliĝas denove. Kiam nombro ne plenumas la kondiĉon `$x <= 10`, la buklo finiĝas. Tiam la programo daŭrigas per la sekva linio.

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

{% include nav.html %}
