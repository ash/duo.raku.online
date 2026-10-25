---
title: 'Risinājums: Faktoriāls'
---

{% include menu.html %}

Lai iegūtu `N` faktoriālu, sareizini visus skaitļus no 1 līdz `N`. Piemēram, 4 faktoriāls ir 1 * 2 * 3 * 4 = 24.

## Kods

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Atrodi programmu failā [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Izvade

Palaid programmu dažas reizes. Izmēģini dažādas `$n` vērtības.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Komentāri

Programma izmanto operatoru `*=`. Tas reizina un saglabā rezultātu mainīgajā. Tātad `$x *= $y` ir tas pats, kas `$x = $x * $y`.

Tu vari uzrakstīt arī ‘pilnu’ ciklu, ar `for` pirms bloka:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Vairāk par šo

Kursā šis uzdevums atgriežas vairākas reizes. Šajā daļā mēs to atrisinām arī citā veidā. Mēs izmantojam funkciju, kas izsauc pati sevi.

Otrajā daļā tu uzzināsi par reducēšanas operatoriem. Ar tiem risinājums ir ļoti vienkāršs. Tu arī iemācīsies izveidot savu operatoru, `!`. Tad faktoriālam tu vari rakstīt `$n!`. Vēlāk tu redzēsi vēl vienu labu risinājumu ar `where`.

{% include nav.html %}
