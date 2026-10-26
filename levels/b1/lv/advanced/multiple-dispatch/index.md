---
title: Daudzkārtēja nosūtīšana
translations_gpt:
---

{% include menu.html %}

Sadaļā "Pamati" jūs iepazināties ar [_multi-funkcijām_](/lv/essentials/more-on-functions/multi-functions). Tās ir vairākas apakšprogrammas ar vienādu nosaukumu. Raku izvēlas pareizo, skatoties uz argumentu tipiem. To sauc par _vairākkārtēju dispečēšanu_ (multiple dispatch).

Līdz šim Raku izvēlējās pēc argumentu _tipa_. `where` klauzula ļauj iet tālāk un izvēlēties arī pēc _vērtības_. To raksta aiz parametra, un tajā ir nosacījums. Argumentam jāatbilst šim nosacījumam, citādi šo kandidātu neizvēlas:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Katrs izsaukums palaiž to kandidātu, kura nosacījums dotajai vērtībai ir patiess:

```
-5 is negative
0 is zero
7 is positive
```

Ja skatās tikai uz tipiem, visiem trim kandidātiem ir vienāda signatūra: viens `Int`. Tāpēc bez `where` klauzulām tie konfliktētu. Nosacījumi padara tos atšķirīgus vienu no otra.

## Bāzes gadījums rekursijai

`where` bieži lieto rekursijas apturēšanas punktam. Šis punkts saņem savu kandidātu. Šeit atkal ir faktoriāls, tagad kā divas multi-apakšprogrammas:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Pirmais kandidāts apstrādā bāzes gadījumu, kad `$n` ir `1` vai mazāks. Tas vienkārši atgriež `1`. Katra cita vērtība nonāk pie otrā kandidāta. Tas izsauc `fact` vēlreiz ar mazāku skaitli. Funkcijā nav neviena `if`. Starp bāzes gadījumu un rekursīvo soli izvēlas dispečeris.

{% include nav.html %}
