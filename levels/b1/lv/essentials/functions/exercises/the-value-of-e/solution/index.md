---
title: 'Risinājums: e vērtība'
---

{% include menu.html %}

## Atruna

Raku valodā ir iebūvēta konstante `e`. Tā uzreiz dod atbildi uz šo uzdevumu. Zemāk dotais risinājums ir domāts tikai mācībām.

## Kods

Šī uzdevuma formulā ir faktoriāls. Mums jau ir vismaz divi veidi, kā to aprēķināt, un sekos vēl citi. Zemāk dotā programma definē divas funkcijas. Viena aprēķina faktoriālu, bet otra aprēķina formulas daļējo summu.

Funkcijai jādarbojas arī bez argumentiem. Tādā gadījumā cikls izpildās noteiktu reižu skaitu. Tāpēc mēs varam dot parametram [noklusējuma vērtību](/lv/essentials/functions/default-values): `sub e-approx($max = 100)`.

Kodā ievērojiet, ka abas funkcijas savus rezultātus veido līdzīgā veidā. Tās izmanto [postfix `for` ciklu](/lv/essentials/loops/postfix-for) pār [diapazonu](/lv/essentials/ranges).

Šeit ir risinājums:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Atrodiet programmu failā [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Izvade

Ar 10 un 100 cikla atkārtojumiem mēs iegūstam šādus rezultātus. Izmēģiniet arī citas `$max` vērtības.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
