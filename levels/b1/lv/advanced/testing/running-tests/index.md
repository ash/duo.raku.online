---
title: Testu palaišana
translations_gpt:
---

{% include menu.html %}

Atsevišķs testu fails ir vienkārši Raku programma. Tāpēc to var palaist tieši:

```
raku t/01-basic.rakutest
```

Tas izdrukā savu TAP izvadi ekrānā. Kad jums ir vairāk par vienu vai diviem failiem, jums vajadzīgs _testu palaidējs_. Tas izpilda veselu testu direktoriju un dod rezultātu kopsavilkumu. Raku palaidējs ir `prove6`:

```
prove6 t/
```

Tas izpilda katru testu failu zem `t/` un ziņo, cik failu un testu izdevās. Beigās ir viens kopējs rezultāts: izdevās vai neizdevās. To ir daudz vieglāk lasīt nekā katra faila neapstrādāto TAP.

Ja distribūcijai ir `META6.json`, moduļu rīks var izpildīt tās testus jūsu vietā:

```
zef test .
```

`zef test` atrod direktoriju `t/`, izpilda testus un ziņo rezultātu. Tieši tas pats notiek automātiski, pirms distribūcija tiek instalēta. Tātad testiem ir divi uzdevumi. Jūs tos palaižat ar `prove6`, kamēr izstrādājat kodu. Ekosistēma tos izpilda, lai pārbaudītu distribūciju, pirms kāds to instalē.

> Testu failiem ir paplašinājums `.rakutest` (vai `.t`). Parasti to nosaukumos ir numuri, kā `t/01-basic.rakutest`.

{% include nav.html %}
