---
title: 'Risinājums: Skaitļu summa no 1 līdz 100'
---

{% include menu.html %}

Kā atrast veselo skaitļu summu no 1 līdz 100? Protams, jūs varat saskaitīt visus skaitļus vienā garā izteiksmē. Vai arī jūs varat uzrakstīt ciklu. Cikli būs vēlāk kursā. Bet labākais veids ir labi zināma [formula](https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯):

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

Ar formulu risinājums ir ļoti vienkāršs.

## Kods

```raku
my $N = 100;
my $sum = $N * (1 + $N) / 2;
say "Skaitļu summa no 1 līdz $N ir $sum.";
```

🦋 Pilnu kodu var atrast failā [sum1-100.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum1-100.raku).

## Rezultāts

```console
$ raku exercises/numbers/sum1-100.raku 
Skaitļu summa no 1 līdz 100 ir 5050.
```

{% include nav.html %}
