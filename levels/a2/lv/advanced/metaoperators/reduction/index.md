---
title: Reducēšanas metaoperatori
translations_gpt:
---

{% include menu.html %}

Jūs rakstāt redukcijas metaoperatoru kā parastu operatoru kvadrātiekavās. Piemēri ir `[+]` un `[*]`. Tas paņem vērtību sarakstu. Tas ieliek operatoru starp katrām divām vērtībām. Tāpēc viss saraksts kļūst par vienu vērtību.

Piemēram, `[+]` saskaita visus saraksta elementus:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` ir tas pats, kas pašiem uzrakstīt visus operatorus:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Arī citi infiksa operatori var strādāt tāpat. Ar `[*]` jūs iegūstat saraksta reizinājumu. Lietojiet to ar diapazonu `1..$n`. Tas ir vienkāršs veids, kā aprēķināt faktoriālu:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Šeit diapazons `1..$n` dod skaitļus no 1 līdz 5. Tad `[*]` tos sareizina: `1 * 2 * 3 * 4 * 5`. Tas ir _5!_.

Tas strādā arī ar virknēm. Redukcija `[~]` savieno virkņu sarakstu vienā virknē:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Jūs varat reducēt pat salīdzināšanas operatorus. `[<]` pasaka, vai katra vērtība ir lielāka par vērtību pirms tās:

```raku
say [<] 1, 2, 3; # True
```

## Trīsstūra redukcija

Ielieciet iekavās atpakaļsvītru. Tad jūs iegūstat _trīsstūra_ redukciju. Tā saglabā katra soļa rezultātu, ne tikai pēdējo rezultātu:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Katrs rezultāta elements ir dažu pirmo skaitļu summa: `1`, tad `1+2`, tad `1+2+3` un tā tālāk. Pēdējais elements ir visa saraksta summa.

{% include nav.html %}
