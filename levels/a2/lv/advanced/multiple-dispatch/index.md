---
title: Daudzkārtēja nosūtīšana
translations_gpt:
---

{% include menu.html %}

Sadaļā "Pamati" jūs uzzinājāt par [_multi-funkcijām_](/lv/essentials/more-on-functions/multi-functions). Tās ir vairākas apakšprogrammas ar vienādu nosaukumu. Raku skatās uz argumentu tipiem. Tad tas izvēlas pareizo apakšprogrammu. To sauc par _vairākkārtēju dispečēšanu_ (multiple dispatch).

Līdz šim Raku izvēlējās pēc argumentu _tipa_. Ar `where` klauzulu jūs varat vairāk. Raku var izvēlēties arī pēc _vērtības_. Jūs rakstāt `where` aiz parametra. Tajā ir nosacījums. Katru funkcijas variantu sauc par kandidātu. Raku izvēlas kandidātu tikai tad, ja tā nosacījums argumentam ir patiess:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Katrs izsaukums nonāk pie kandidāta, kura nosacījums šai vērtībai ir patiess:

```
-5 is negative
0 is zero
7 is positive
```

Paskatieties uz tipiem. Visiem trim kandidātiem ir vienāda signatūra: viens `Int`. Bez `where` klauzulām tie konfliktē. Raku nevar izvēlēties starp tiem. Nosacījumi padara tos atšķirīgus.

## Kā apturēt rekursiju

`where` bieži lieto kopā ar rekursiju. Rekursijā funkcija izsauc pati sevi. Kādā brīdī tai jāapstājas. Šo apstāšanās punktu jūs varat ielikt atsevišķā kandidātā. Šeit atkal ir faktoriāls. Tagad tajā ir divas multi-apakšprogrammas:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

Pirmais kandidāts ir bāzes gadījums. Šeit rekursija apstājas. Šajā gadījumā `$n` ir `1` vai mazāks. Šis kandidāts vienkārši atgriež `1`. Visas citas vērtības nonāk pie otrā kandidāta. Tas izsauc `fact` vēlreiz ar mazāku skaitli. Funkcijā nav neviena `if`. Dispečeris izvēlas starp bāzes gadījumu un rekursīvo soli. Dispečeris ir Raku daļa, kas izvēlas kandidātu.

{% include nav.html %}
