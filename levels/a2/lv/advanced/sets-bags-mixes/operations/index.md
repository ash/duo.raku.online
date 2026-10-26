---
title: Kopu operācijas
translations_gpt:
---

{% include menu.html %}

Kopas var apvienot ar parastajām kopu teorijas operācijām. Kopu teorija ir matemātikas daļa. Katram operatoram ir Unikoda simbols. Tam ir arī veids, kā to rakstīt ASCII. Izmantojiet to, kas jums labāk patīk.

_Apvienojums_ ir `∪`, vai ASCII pierakstā `(|)`. Tas paņem visas vērtības no abām kopām:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Vērtība `3` ir abās kopās. Tāpēc apvienojumā ir pieci atšķirīgi elementi: `1, 2, 3, 4, 5`.

_Šķēlums_ ir `∩`, vai ASCII pierakstā `(&)`. Tas patur tikai tās vērtības, kas ir abās kopās:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — note that sets are unordered
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Šeit šķēlumā ir `2` un `3`. Šīs vērtības ir abās kopās. Kopai nav secības. Tāpēc izvadē abi elementi var būt jebkurā secībā.

Arī šīs operācijas dod kopu. Tāpēc tai var uzdot tos pašus jautājumus. Cik tajā ir elementu? Vai tajā ir noteikta vērtība?

{% include nav.html %}
