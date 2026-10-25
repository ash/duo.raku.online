---
title: 'Risinājums: Fibonači skaitļi'
---

{% include menu.html %}

Lūk, kā iegūt Fibonači skaitļus.

1. _F<sub>0</sub>_ = 0, _F<sub>1</sub>_ = 1
2. _F<sub>n</sub>_ = _F<sub>n-1</sub>_ + _F<sub>n-2</sub>_

## Kods

Kods dara tieši to, ko saka algoritms. Tajā ir divi mainīgie diviem pašreizējiem Fibonači skaitļiem. Cikls katru reizi tos maina. Abi mainīgie saņem jaunas vērtības [vienā piešķiršanā](/lv/essentials/scalar-variables/assigning-a-value/#multiple-assignment).

```raku
my $a = 0;
my $b = 1;

say $a;
for ^19 {
    ($a, $b) = $b, $a + $b;
    say $a;
}
```

🦋 Atrodiet programmu failā [fibonacci-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/fibonacci-numbers.raku).

## Izvade

Šeit ir izvade. Tā rāda pirmos 20 skaitļus.

```console
$ raku exercises/loops/fibonacci-numbers.raku
0
1
1
2
3
5
8
13
21
34
55
89
144
233
377
610
987
1597
2584
4181
```

## Vairāk par šo

Atcerieties šo uzdevumu. Vēlāk mēs pie tā atgriežamies. Tad mēs izmantojam Raku _sekvences_. Tas ir jauns un aizraujošs veids, kā to atrisināt.

{% include nav.html %}
