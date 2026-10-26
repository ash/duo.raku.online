---
title: Fāzeri
translations_gpt:
---

{% include menu.html %}

_Fāzeris_ (phaser) ir īpašs bloks. Tas izpildās automātiski noteiktā programmas dzīves brīdī. Tas neizpildās tur, kur tas atrodas pirmkodā. Jūs neizsaucat fāzeri. Jūs tikai norādāt, _kad_ tā kodam jāizpildās, ar bloka nosaukumu.

Biežāk lietotie fāzeri atzīmē visas programmas posmus:

* `BEGIN` izpildās pēc iespējas agrāk, kamēr Raku vēl kompilē programmu;
* `INIT` izpildās vienu reizi, kad programma sākas, pirms galvenā koda;
* `END` izpildās vienu reizi pašās beigās, pēc tam, kad galvenais kods ir pabeigts.

Nākamā programma novieto šos fāzerus starp parastiem izteikumiem. Ievērojiet, ka izvade neseko rindu secībai failā:

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

`BEGIN` izpildās pirmais, kamēr programma tiek kompilēta. Tad programmas izpildes laikā `INIT` izpildās pirms galvenās daļas. Pēc tam drukā galvenā daļa. `END` izpildās pēdējais, lai kur tas būtu uzrakstīts failā.

`END` bieži lieto tieši pirms programmas beigām. Tas var izdrukāt kopsavilkumu vai kaut ko iztīrīt. `BEGIN` ir noderīgs darbam, kam jānotiek pirms visa pārējā.

{% include nav.html %}
