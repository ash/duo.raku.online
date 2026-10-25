---
title: 'Uzante `while`'
---

{% include menu.html %}

La `while` buklo havas kondiĉon kaj blokon de kodo. La kondiĉo estas `True` aŭ `False`. Raku rulas la blokon denove kaj denove, _dum_ la kondiĉo estas `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Enigu numeron, kiu ne estas pli granda ol 10: ';
    say "Vi enigis $x.";
}
say "$x estas pli granda ol 10.";
```

La programo petas nombron de vi. Se la nombro estas 10 aŭ malpli, la buklo ruliĝas denove. Se la nombro estas pli granda ol 10, la kondiĉo `$x <= 10` estas `False`. Tiam la buklo haltas. La programo iras al la sekva linio.

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
