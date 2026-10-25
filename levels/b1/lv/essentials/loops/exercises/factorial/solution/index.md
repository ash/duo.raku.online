---
title: 'Risinājums: Faktoriāls'
---

{% include menu.html %}

`N` faktoriāls ir visu veselo skaitļu reizinājums no 1 līdz `N` ieskaitot. Piemēram, 4 faktoriāls ir 1 * 2 * 3 * 4 = 24.

## Kods

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Atrodi programmu failā [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Izvade

Palaid programmu vairākas reizes un izmēģini dažādas `$n` vērtības.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Komentāri

Šī programma izmanto `*=` operatoru — saīsinātu formu reizināšanai ar piešķiršanu: `$x *= $y` ir tas pats, kas `$x = $x * $y`.

Tu vari izmantot arī ‘pilnu’ ciklu postfix formas vietā:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Vairāk par šo tēmu

Mēs vairākas reizes atgriezīsimies pie šī uzdevuma. Šajā kursa daļā mēs to arī atrisināsim rekursīvi.

Kursa otrajā daļā mēs uzzināsim par tā sauktajiem reducēšanas operatoriem, kas padara risinājumu ļoti vienkāršu. Mēs arī redzēsim, kā definēt savu operatoru `!`, lai tu varētu rakstīt `$n!` un aprēķināt faktoriālu. Visbeidzot, mēs redzēsim vēl vienu interesantu risinājumu, kad runāsim par `where` klauzulu.

{% include nav.html %}
