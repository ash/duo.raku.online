---
title: '`gather` un `take`'
translations_gpt:
---

{% include menu.html %}

Pāris `gather` un `take` ir elastīgs veids, kā uzbūvēt sarakstu. Jūs ieliekat kādu kodu blokā `gather`. Katru reizi, kad šis kods izsauc `take`, vērtība nonāk sarakstā, ko `gather` atgriež.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Trīs `take` izsaukumi dod trīs vērtības, un `gather` tās savāc sarakstā. Šis saraksts tiek saglabāts mainīgajā `@result`.

Pāris ir patiešām spēcīgs, kad `take` izsaukumi ir izkaisīti pa parastu kodu. Piemērs ir cikls ar nosacījumu. Tad sarakstā ir tikai tās vērtības, ko jūs izvēlējāties paņemt:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Šeit cikls iet pāri skaitļiem no 1 līdz 10. Bet tiek paņemti tikai pāra skaitļi. Tāpēc beigās `@evens` satur `2, 4, 6, 8, 10`. Operators `%%` pārbauda, vai skaitlis dalās bez atlikuma.

Tieši šī darba dalīšana padara `gather`/`take` tik noderīgu. Kods ap to izlemj, _kad_ radīt vērtību. Un `gather` klusi savāc visu, kas ir paņemts.

{% include nav.html %}
