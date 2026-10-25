---
title: 'Risinājums: Garais gads'
---

{% include menu.html %}

## Atruna

Risinājums zemāk ir domāts praksei. Tas māca jums izmantot nosacījumu pārbaudes. Raku valodā ir iebūvēta `Date` klase. Reālajā dzīvē jūs varat apgūt tās metodes. Par šo klasi mēs mācīsimies kursa otrajā daļā.

## Risinājums

Šie soļi parāda, vai gads ir garais gads:

1. ja gads nav dalāms ar 4 => parastais gads
1. ja gads nav dalāms ar 100 => garais gads
1. ja gads nav dalāms ar 400 => parastais gads
1. citādi => garais gads

Raku valodā ir iebūvēti tipi datumiem un laikam. Jūs varat izmantot arī tos. Tāpēc kursa otrajā daļā šis uzdevums būs vēlreiz.

## Kods 1

Pirmais risinājums precīzi seko iepriekšējiem soļiem:

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

Otrais risinājums ieliek visu loģiku vienā izteiksmē. Jums ne vienmēr vajag apaļās iekavas. Mēs tās šeit pievienojam, lai kods būtu skaidrāks.

```raku
my $year = prompt 'Gads: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Garais gads' !! 'Parastais gads';
```

🦋 Atrodiet programmu failā [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Izvade

Izmēģiniet abas programmas ar svarīgākajiem gadījumiem. Piemēram, izmantojiet 1900, 2000, 2020 un 2021.

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

Dažreiz Raku ir vajadzīgs `True` vai `False`. To mēs saucam par Būla kontekstu. Būla kontekstā `%%` un `%` dod pretējus rezultātus. Ja viens dod `True`, otrs dod `False`. Jūs varat izmantot šo faktu. Izvēlieties vienu no abiem operatoriem. Tad jums nav jāraksta salīdzinājums ar nulli.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # False
```
%%/tipblock

{% include nav.html %}
