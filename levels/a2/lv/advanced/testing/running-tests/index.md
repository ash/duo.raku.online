---
title: Testu palaišana
translations_gpt:
---

{% include menu.html %}

Viens testu fails ir vienkārši Raku programma. Tāpēc jūs varat to palaist kā jebkuru programmu:

```
raku t/01-basic.rakutest
```

Tas izdrukā savu TAP izvadi ekrānā. Bet jums var būt vairāk nekā viens vai divi faili. Tad jums vajag _testu palaidēju_. Tas izpilda visus testus direktorijā. Tad tas dod īsu rezultātu kopsavilkumu. Raku testu palaidējs ir `prove6`:

```
prove6 t/
```

Tas izpilda katru testu failu zem `t/`. Tas parāda, cik failu un testu izdevās. Beigās tas dod vienu rezultātu visam: izdevās vai neizdevās. To ir daudz vieglāk lasīt nekā katra faila neapstrādāto TAP.

Distribūcijai var būt `META6.json`. Tad moduļu rīks izpilda tās testus jūsu vietā:

```
zef test .
```

`zef test` atrod direktoriju `t/`. Tas izpilda visus testus un parāda rezultātu. Tas pats notiek automātiski, pirms kāds instalē distribūciju. Tātad testiem ir divi uzdevumi. Jūs tos palaižat ar `prove6`, kamēr strādājat pie sava koda. Un ekosistēma tos izpilda, pirms kāds instalē distribūciju. Šādi tā pārbauda distribūciju.

> Testu failiem ir paplašinājums `.rakutest` vai `.t`. Parasti to nosaukumi sākas ar skaitli, piemēram, `t/01-basic.rakutest`.

{% include nav.html %}
