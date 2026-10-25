---
title: 'Risinājums: Faktoriāls'
---

{% include menu.html %}

`N` faktoriāls ir visi veselie skaitļi no 1 līdz `N`, sareizināti kopā. Piemēram, 4 faktoriāls ir 1 * 2 * 3 * 4 = 24.

## Kods

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Atrodi programmu failā [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Izvade

Palaid programmu dažas reizes ar dažādām `$n` vērtībām.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Komentāri

Šī programma izmanto `*=` operatoru. Tas ir īss veids, kā reizināt un piešķirt: `$x *= $y` nozīmē to pašu, ko `$x = $x * $y`.

Tu vari izmantot arī ‘pilnu’ ciklu postfix formas vietā:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Vairāk par šo

Kursā mēs vēl vairākas reizes atgriežamies pie šī uzdevuma. Šajā kursa daļā mēs to atrisinām arī ar rekursiju.

Kursa otrajā daļā tu uzzināsi par reducēšanas operatoriem. Ar tiem risinājums ir ļoti vienkāršs. Tu arī iemācīsies izveidot savu operatoru `!`. Tad tu vari rakstīt `$n!`, lai iegūtu faktoriālu. Vēlāk mēs redzēsim vēl vienu interesantu risinājumu ar `where` klauzulu.

{% include nav.html %}
