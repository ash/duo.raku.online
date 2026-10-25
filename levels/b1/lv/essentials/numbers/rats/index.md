---
title: Racionālie skaitļi
---

{% include menu.html %}

Racionālie skaitļi ir unikāla Raku iezīme. Tiem ir savs datu tips — `Rat`.

Iekšēji racionāls skaitlis ir daļskaitlis. Tam ir divas veselu skaitļu daļas — skaitītājs un saucējs. Tas nozīmē, ka tādus skaitļus kā 1/3 var saglabāt precīzi.

Ir vairāki veidi, kā Raku programmā uzrakstīt `Rat` skaitli:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Ņemiet vērā, ka slīpsvītra šeit ir daļa no tā, kā skaitlis ir uzrakstīts. Tā nav dalīšanas operators. Tātad `1/2` nenozīmē, ka jūs dalāt 1 ar 2. Tomēr, kad jūs izdrukājat racionālus skaitļus, tie izskatās kā decimālskaitļi vai veseli skaitļi:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Viss, kas rindā ir pēc simbola `#`, ir komentārs, ko kompilators ignorē. Šajā kursā mēs izmantosim šādus komentārus, lai parādītu, ko programma izdrukā.

## Decimāldaļas forma

Ir svarīgi to saprast. Ja jūs rakstāt skaitli decimāldaļas formā, piemēram, `0.5`, Raku izveido `Rat` skaitli. Tas nav vesels skaitlis, un tas nav arī peldošā punkta skaitlis. Citās valodās tādus skaitļus sauc par `float` vai `double`. Tas joprojām ir racionāls skaitlis!

Aplūkojiet šādu piemēru:

```raku
say 0.1 + 0.2 - 0.3;
```

Ja valoda šeit izmanto peldošā punkta aritmētiku, rezultāts nebūs 0. Vietnē [0.30000000000000004.com](https://0.30000000000000004.com) ir pilns piemēru saraksts. Visos tajos peldošā punkta aritmētika nedod gaidīto rezultātu.

Bet Raku izdrukā precīzu `0`. Tas ir tāpēc, ka tas uztver `0.1`, `0.2` un `0.3` kā racionālus skaitļus. Iekšēji tas tos glabā kā `1/10`, `2/10` un `3/10`. Palaidiet to no komandrindas, lai to pārbaudītu:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unikoda formas

Jūs varat izmantot arī Unikoda rakstzīmes daļskaitļiem, piemēram, `½`, `¼` vai `¾`. Tās droši vien ne vienmēr ir viegli ierakstīt ar tastatūru. Bet šie daļskaitļi ir tieši tādas pašas vērtības kā to ASCII versijas. Tās var uzrakstīt kā daļskaitli vai kā decimālskaitli:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Dažiem daļskaitļiem, piemēram, `1/3`, jums ir mazāk iespēju: `⅓` vai `<1/3>`. Tas ir tāpēc, ka decimāldaļas formai vajadzētu bezgalīgi daudz ciparu.

{% include nav.html %}
