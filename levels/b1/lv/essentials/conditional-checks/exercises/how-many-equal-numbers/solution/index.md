---
title: 'Risinājums: Cik daudz skaitļi ir vienādi?'
---

{% include menu.html %}

Programmai skaitļi jāsalīdzina dažas reizes. Kad lietotājs ievada trīs skaitļus, ir iespējami tikai trīs gadījumi:

1. Visi trīs skaitļi ir vienādi,
1. Tikai divi skaitļi ir vienādi, un
1. Visi skaitļi ir atšķirīgi.

## Kods

Šeit ir risinājums, kurā visi salīdzinājumi ir izrakstīti.

```raku
my $n1 = prompt 'Ievadiet skaitli 1: ';
my $n2 = prompt 'Ievadiet skaitli 2: ';
my $n3 = prompt 'Ievadiet skaitli 3: ';

if $n1 == $n2 == $n3 {
    say 3;
}
elsif $n1 == $n2 || $n2 == $n3 || $n1 == $n3 {
    say 2;
}
else {
    say 0;
}
```

🦋 Atrodiet programmu failā [how-many-equal-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/how-many-equal-numbers.raku).

## Izvade

```console
$ raku exercises/conditional-checks/how-many-equal-numbers.raku 0 0 0
Ievadiet skaitli 1: 14
Ievadiet skaitli 2: 8
Ievadiet skaitli 3: 8
2

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Ievadiet skaitli 1: 15
Ievadiet skaitli 2: 15
Ievadiet skaitli 3: 15
3

$ raku exercises/conditional-checks/how-many-equal-numbers.raku 
Ievadiet skaitli 1: 4
Ievadiet skaitli 2: 6
Ievadiet skaitli 3: 8
0
```

## Komentāri

1. Ņemiet vērā, ka jūs varat salīdzināt trīs skaitļus vienā izteiksmē: `$n1 == $n2 == $n3`.
1. Kad jūs apgūsiet reducēšanas operatoru, atgriezieties un atrisiniet šo uzdevumu vēlreiz.

{% include nav.html %}
