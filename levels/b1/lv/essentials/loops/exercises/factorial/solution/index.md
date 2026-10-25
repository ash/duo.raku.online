---
title: 'Risinājums: Faktoriāls'
---

{% include menu.html %}

`N` faktoriāls ir visu veselo skaitļu reizinājums no 1 līdz `N`. Piemēram, 4 faktoriāls ir 1 * 2 * 3 * 4 = 24.

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

Šī programma izmanto `*=` operatoru, kas reizina un piešķir vienā solī: `$x *= $y` nozīmē to pašu, ko `$x = $x * $y`.

Postfix formas vietā tu vari izmantot arī ‘pilnu’ ciklu:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Vairāk par šo tēmu

Mēs vairākas reizes atgriezīsimies pie šī uzdevuma. Vēlāk šajā kursa daļā mēs to atrisināsim arī ar rekursiju.

Kursa otrajā daļā mēs uzzināsim par reducēšanas operatoriem. Tie padara risinājumu ļoti vienkāršu. Mēs arī izveidosim savu operatoru `!`, lai `$n!` dotu faktoriālu. Visbeidzot, būs vēl viens interesants risinājums, kad runāsim par `where` klauzulu.

{% include nav.html %}
