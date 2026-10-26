---
title: '`gather` un `take`'
translations_gpt:
---

{% include menu.html %}

`gather` un `take` strādā kā pāris. Ar tiem jūs varat uzbūvēt sarakstu daudzos veidos. Jūs ieliekat kādu kodu blokā `gather`. Katru reizi, kad šis kods izsauc `take`, vērtība nonāk sarakstā. Bloks `gather` jums atdod šo sarakstu.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

Trīs `take` izsaukumi dod trīs vērtības. `gather` tās savāc sarakstā. Saraksts nonāk mainīgajā `@result`.

Pāris ir visnoderīgākais, kad `take` izsaukumi ir parastā kodā. Piemēram, tie var būt ciklā ar nosacījumu. Tad sarakstā ir tikai tās vērtības, ko jūs paņemat:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Šeit cikls iet pāri skaitļiem no 1 līdz 10. Bet kods paņem tikai pāra skaitļus. Tāpēc beigās mainīgajā `@evens` ir `2, 4, 6, 8, 10`. Operators `%%` pārbauda, vai skaitlis dalās bez atlikuma.

Šī darba sadale padara `gather`/`take` tik noderīgu. Kods ap `take` izlemj, _kad_ radīt vērtību. Un `gather` klusi savāc katru vērtību, ko jūs paņemat.

{% include nav.html %}
