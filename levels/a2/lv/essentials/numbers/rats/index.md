---
title: Racionālie skaitļi
---

{% include menu.html %}

Racionālie skaitļi ir unikāla Raku iezīme. To datu tips ir `Rat`.

Raku iekšienē racionāls skaitlis ir daļskaitlis. Tam ir divas veselu skaitļu daļas. Skaitītājs ir augšā, un saucējs ir apakšā. Tāpēc jūs varat viegli glabāt tādus skaitļus kā 1/3. Tie paliek precīzi.

Ir daži veidi, kā Raku valodā uzrakstīt `Rat` skaitli:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Ievērojiet, ka slīpsvītra šeit ir daļa no skaitļa pieraksta. Tā nav dalīšanas operators. Tātad `1/2` nenozīmē ‘daliet 1 ar 2’. Bet Raku izdrukā racionālos skaitļus kā decimālskaitļus vai veselus skaitļus:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Teksts pēc simbola `#` ir komentārs. Kompilators to ignorē. Kursā šie komentāri parāda programmas izvadi.

## Decimāldaļas forma

Tas ir svarīgi zināt. Jūs varat uzrakstīt skaitli decimāldaļas formā, piemēram, `0.5`. Tad Raku izveido `Rat` skaitli. Tas nav vesels skaitlis. Bet tas nav arī peldošā punkta skaitlis. Citās valodās tādus skaitļus sauc par `float` vai `double`. Tas joprojām ir racionāls skaitlis!

Apskatiet šo piemēru:

```raku
say 0.1 + 0.2 - 0.3;
```

Programmēšanas valoda šiem aprēķiniem var izmantot peldošā punkta aritmētiku. Tad rezultāts nav 0. Vietnē [0.30000000000000004.com](https://0.30000000000000004.com) ir pilns šādu piemēru saraksts. Tajos peldošā punkta aritmētika nedod gaidīto rezultātu.

Bet Raku izdrukā tieši `0`. Kāpēc? Raku uztver `0.1`, `0.2` un `0.3` kā racionālus skaitļus. Iekšēji tas tos glabā kā `1/10`, `2/10` un `3/10`. Palaidiet kodu no komandrindas un pārbaudiet:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unikoda formas

Jūs varat izmantot arī Unikoda rakstzīmes daļskaitļiem, piemēram, `½`, `¼` vai `¾`. Varbūt tās ne vienmēr ir viegli ierakstīt ar tastatūru. Bet tās ir tieši tādas pašas vērtības kā to ASCII versijas. ASCII versija var būt daļskaitlis vai decimālskaitlis:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Dažiem daļskaitļiem, piemēram, `1/3`, ir mazāk formu: tikai `⅓` vai `<1/3>`. Decimāldaļas forma tiem neder. Tai vajag bezgalīgi daudz ciparu.

{% include nav.html %}
