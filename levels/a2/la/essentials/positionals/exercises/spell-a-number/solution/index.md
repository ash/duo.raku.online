---
title: 'Solutio: Litterare numerum'
---

{% include menu.html %}

Programma infra suum array cum nominibus numerorum habet. Sunt nomina a 0 ad 20. Sunt etiam nomina decadum: 20, 30, et cetera. Deinde est catena inspectionum condicionalium. Eae regulam scribendi pro numero eligunt.

## Codex

```raku
my $n = @*ARGS[0];

my @nomina = <
    zero unus duo tres quattuor quinque sex septem octo novem decem
    undecim duodecim tredecim quattuordecim quindecim sedecim septendecim duodeviginti undeviginti viginti
    triginta quadraginta quinquaginta sexaginta septuaginta octoginta nonaginta >;

if $n < 20 {
    say @nomina[$n];
}
elsif $n % 10 { # Numeri duo-digiti non-rotundi, e.g., 34
    say @nomina[$n / 10 + 18] ~ '-' ~ @nomina[$n % 10];
}
else { # Multipla 10, e.g., 50
    say @nomina[$n / 10 + 18];
}
```

🦋 Inveni codicem fontem in archivo [spell-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/spell-a-number.raku).

## Exemplum

Curre programma aliquoties. Proba omnes tres ramos `if`—`elsif`—`else`.

```console
$ raku exercises/positionals/spell-a-number.raku 5
quinque

$ raku exercises/positionals/spell-a-number.raku 12
duodecim

$ raku exercises/positionals/spell-a-number.raku 67
sexaginta-septem

$ raku exercises/positionals/spell-a-number.raku 80
octoginta
```

{% include nav.html %}
