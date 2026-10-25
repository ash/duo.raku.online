---
title: Daudzrindu komentāri
---

{% include menu.html %}

Ja jūsu komentārs ir garāks par vienu rindu, jums ir izvēle. Varat uzrakstīt dažus vienrindu komentārus vai vienu vairākrindu komentāru.

Vairākrindu komentāri sākas ar divām rakstzīmēm: ``#` ``. Pēc tām seko atverošās un aizverošās rakstzīmes pāris: `( )`, `{ }`, `[ ]` vai `< >`. Tās var arī atkārtot, piemēram, `(( ))`, `[[[ ]]]` un tā tālāk.

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
