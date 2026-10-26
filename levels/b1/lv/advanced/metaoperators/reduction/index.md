---
title: Reducēšanas metaoperatori
translations_gpt:
---

{% include menu.html %}

Redukcijas metaoperators ir parasts operators kvadrātiekavās, piemēram, `[+]` vai `[*]`. Tas paņem vērtību sarakstu un ievieto operatoru starp katru vērtību pāri. Tādā veidā tas samazina visu sarakstu līdz vienai vērtībai.

Piemēram, `[+]` saskaita visus saraksta elementus:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

Kods `[+] @data` ir tas pats, kas izrakstīt operatoru pilnā formā:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Jebkurš piemērots infiksa operators darbojas tāpat. Ar `[*]` jūs iegūstat saraksta reizinājumu. Tāpēc varat to lietot diapazonam `1..$n`, lai viegli aprēķinātu faktoriālu:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Šeit diapazons `1..$n` dod skaitļus no 1 līdz 5, un `[*]` tos sareizina: `1 * 2 * 3 * 4 * 5`. Rezultāts ir _5!_.

Tas darbojas arī virkņu savienošanai. Redukcija `[~]` savieno virkņu sarakstu vienā virknē:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Jūs varat reducēt pat salīdzināšanas operatorus. `[<]` pasaka, vai katra vērtība ir lielāka par iepriekšējo:

```raku
say [<] 1, 2, 3; # True
```

## Trīsstūra redukcija

Ja iekavās ieliekat atpakaļsvītru, jūs iegūstat _trīsstūra_ redukciju. Tā saglabā visus starprezultātus, ne tikai gala rezultātu:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Katrs rezultāta elements ir daļēja summa: `1`, tad `1+2`, tad `1+2+3` un tā tālāk. Pēdējais ir visa saraksta summa.

{% include nav.html %}
