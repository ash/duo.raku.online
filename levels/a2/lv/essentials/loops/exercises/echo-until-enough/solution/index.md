---
title: 'Risinājums: Echo līdz pietiek'
---

{% include menu.html %}

Šai programmai vajag ciklu, kas apstājas, kad lietotājs ievada īpašu vārdu.

## Kods

Tu vari atrisināt uzdevumu vairākos līdzīgos veidos, ar `while`, `until` vai `repeat`. Šeit ir viens no tiem.

```raku
my $word;
repeat {
    $word = prompt 'Tavs vārds: ';
    say $word;
} while $word ne 'pietiek';

say 'Labi, pabeigts.';
```

🦋 Atrodi programmu failā [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Izvade

Palaid programmu un ievadi dažus dažādus vārdus. Tad pārtrauc ciklu.

```console
$ raku exercises/loops/echo-until-enough.raku
Tavs vārds: šis
šis
Tavs vārds: ir
ir
Tavs vārds: mans
mans
Tavs vārds: vārds
vārds
Tavs vārds: pietiek
pietiek
Labi, pabeigts.
```

## Komentārs

Ņem vērā, ka tu deklarē mainīgo `$word` _pirms_ cikla. `while` tests ir ārpus cikla ķermeņa. Ja tu definē mainīgo cikla iekšpusē, tests to neredz.

{% include nav.html %}
