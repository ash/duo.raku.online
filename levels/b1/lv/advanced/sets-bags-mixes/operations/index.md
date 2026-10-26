---
title: Kopu operācijas
translations_gpt:
---

{% include menu.html %}

Kopas var apvienot ar parastajām kopu teorijas operācijām. Katram operatoram ir Unikoda simbols un ASCII pieraksts. Jūs varat lietot jebkuru no tiem.

_Apvienojums_ `∪` jeb `(|)` savāc visas abu kopu vērtības:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Tā kā abās kopās ir `3`, apvienojumā ir pieci atšķirīgi elementi: `1, 2, 3, 4, 5`.

_Šķēlums_ `∩` jeb `(&)` patur tikai tās vērtības, kas ir abām kopām:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — note that sets are unordered
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Šeit šķēlumā ir `2` un `3`, vērtības, kas ir abās kopās. Kopai nav savas secības. Tāpēc, kad jūs to izdrukājat, abi elementi var parādīties jebkurā secībā.

Arī šo operāciju rezultāts ir kopa. Tāpēc tai var uzdot tos pašus jautājumus. Cik tajā ir elementu, un vai tajā ir noteikta vērtība?

{% include nav.html %}
