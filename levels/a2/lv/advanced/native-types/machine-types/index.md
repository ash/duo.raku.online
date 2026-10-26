---
title: Mašīnas līmeņa tipi
---

{% include menu.html %}

Natīvo tipu nosaukumi ir ar mazajiem burtiem: `int`, `num` un `str`. Jūs deklarējat mainīgo ar tiem tāpat kā ar `Int` vai `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Natīvā vērtība tieši atbilst mašīnas reģistram vai vārdam. Tās ir mazas vietas datiem datora iekšienē. Parastai Raku vērtībai apkārt ir iesaiņojuma objekts. Natīvajai vērtībai iesaiņojuma nav. Tāpēc natīvie tipi ir ātrāki un aizņem mazāk atmiņas. Tas ir svarīgi lielos masīvos. Tas ir svarīgi arī īsās cilpās, kas daudz rēķina.

Vienu lietu vajag zināt uzreiz. Natīvais mainīgais nekad nav nedefinēts. Parasts `Int` mainīgais sākumā ir nedefinēts. `say` to parāda kā `(Int)`. Bet natīvais `int` sākas ar **nulli**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Tas pats attiecas uz natīvajiem masīviem. Lai tādu deklarētu, uzrakstiet natīvo tipu pirms `@` mainīgā:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Šāds masīvs glabā savus elementus kā vienkāršus mašīnas veselos skaitļus. Tie nav pilnvērtīgi `Int` objekti. Tāpēc masīvs aizņem mazāk atmiņas. Jūs varat jautāt natīvajai vērtībai par tās tipu. Tad Raku automātiski ieliek to atbilstošajā pilnajā tipā. Mēs sakām, ka vērtība ir _iesaiņota_. Tāpēc `(my int $b).WHAT` parāda `(Int)`.

{% include nav.html %}
