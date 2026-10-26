---
title: Fāzeri
translations_gpt:
---

{% include menu.html %}

_Fāzeris_ (phaser) ir īpašs bloks. Tas izpildās pats no sevis noteiktā programmas dzīves brīdī. Tas neizpildās savā vietā kodā. Jūs neizsaucat fāzeri. Jūs tikai pasakāt, _kad_ tā kodam jāizpildās. To pasaka bloka nosaukums.

Biežākie fāzeri ir saistīti ar visas programmas posmiem:

* `BEGIN` izpildās pēc iespējas agrāk. Šajā laikā Raku vēl kompilē programmu.
* `INIT` izpildās vienu reizi, kad programma sākas. Tas izpildās pirms galvenā koda.
* `END` izpildās vienu reizi pašās beigās. Tas izpildās, kad galvenais kods ir pabeigts.

Šajā programmā šie fāzeri ir starp parastiem izteikumiem. Paskatieties uz izvadi. Tā neseko rindu secībai failā:

```raku
say 'main body';
BEGIN say 'BEGIN';
END say 'END';
INIT say 'INIT';
```

Programma izdrukā:

```
BEGIN
INIT
main body
END
```

`BEGIN` izpildās pirmais, kompilācijas laikā. Tad programma sāk darboties. `INIT` izpildās pirms galvenās daļas. Pēc tam galvenā daļa izdrukā savu rindu. `END` izpildās pēdējais. Tā vieta failā nav svarīga.

Cilvēki bieži lieto `END`, lai izdrukātu kopsavilkumu. Viņi to lieto arī, lai kaut ko iztīrītu. Tas notiek tieši pirms programma apstājas. `BEGIN` ir noderīgs darbam, kam jānotiek pirms visa pārējā.

{% include nav.html %}
