---
title: 'Risinājums: Garais gads'
---

{% include menu.html %}

## Atruna

Risinājums zemāk ir domāts kā prakse ar nosacījumu pārbaudēm. Īstiem uzdevumiem jūs varat apgūt iebūvētās `Date` klases metodes. Šī klase būs kursa otrajā daļā.

## Risinājums

Šis algoritms nosaka, vai gads ir garais gads:

1. ja gads nav dalāms ar 4 => parastais gads
1. ja gads nav dalāms ar 100 => garais gads
1. ja gads nav dalāms ar 400 => parastais gads
1. citādi => garais gads

Ņemiet vērā, ka Raku valodā ir iebūvēti tipi darbam ar datumiem un laiku. Tāpēc mēs atgriezīsimies pie šī uzdevuma kursa otrajā daļā.

## Kods 1

Pirmais risinājums dara tieši to, ko saka iepriekšējie soļi:

```raku
my $year = prompt 'Gads: ';

if $year % 4 {
    say 'Parastais gads';
}
elsif $year % 100 {
    say 'Garais gads';
}
elsif $year % 400 {
    say 'Parastais gads';
}
else {
    say 'Garais gads';
}
```

🦋 Atrodiet programmu failā [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Kods 2

Otrajā risinājumā visa loģika ir vienā izteiksmē. Iekavas ne vienmēr ir vajadzīgas, bet šeit tās padara kodu skaidrāku.

```raku
my $year = prompt 'Gads: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Garais gads' !! 'Parastais gads';
```

🦋 Atrodiet programmu failā [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Izvade

Pārbaudiet abas programmas ar svarīgākajiem gadījumiem, piemēram, 1900, 2000, 2020 un 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Gads: 1900
Parastais gads

$ raku exercises/conditional-checks/leap-year.raku
Gads: 2000
Garais gads
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Gads: 2020
Garais gads

$ raku exercises/conditional-checks/leap-year-formula.raku
Gads: 2021
Parastais gads
```

%%tipblock
## `%%` vs `%`

Ņemiet vērā, ka Būla kontekstā operatori `%%` un `%` dod pretējus rezultātus. To var izmantot, lai izvēlētos pareizo operatoru. Tad jums nav jāraksta salīdzinājums ar nulli.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
