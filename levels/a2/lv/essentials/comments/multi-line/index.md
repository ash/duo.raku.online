---
title: Daudzrindu komentāri
---

{% include menu.html %}

Dažreiz komentārs ir garāks par vienu rindu. Tad jums ir divas iespējas. Jūs varat uzrakstīt dažus vienrindu komentārus. Vai arī jūs varat uzrakstīt vienu vairākrindu komentāru.

Vairākrindu komentārs sākas ar divām rakstzīmēm: ``#` ``. Pēc tām nāk iekavu pāris: `( )`, `{ }`, `[ ]` vai `< >`. Jūs tās varat arī atkārtot: `(( ))`, `[[[ ]]]` un tā tālāk.

Piemēram:

```raku
my $name;
#`( Mēs lūgsim lietotājam
vispirms ievadīt savu vārdu un tad
saglabāt ievadi mainīgajā. )

$name = prompt 'Kāds ir tavs vārds? ';
#`{ Programma tagad gaida,
līdz lietotājs ievadīs vārdu
un nospiedīs Enter. }

say $name; #`( Un tagad mēs to varam izdrukāt )
```

{% include nav.html %}
