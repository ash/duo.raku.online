---
title: run un shell
translations_gpt:
---

{% include menu.html %}

Ir divi veidi, kā palaist ārēju programmu. Pirmais ir funkcija `run`. Tā nelieto čaulu. Čaula ir programma, kas nolasa komandas un tās izpilda. `run` ņem komandu un tās argumentus kā **atsevišķas** vērtības. Argumenti ir vērtības, ko jūs dodat komandai. Tad `run` palaiž programmu tieši:

```raku
run 'echo', 'hello';
```

Tas palaiž programmu `echo` ar vienu argumentu, `hello`. Programma izdrukā `hello`. Argumenti nonāk pie programmas atsevišķi. Tāpēc neviena čaula nevar pārprast atstarpes vai īpašās rakstzīmes. Tieši tāpēc `run` ir drošā noklusējuma izvēle.

Funkcija `shell` strādā citādi. Tā dod **vienu virkni** sistēmas čaulai. Čaula nolasa virkni un to izpilda. Tāpēc jūs varat lietot čaulas iespējas, piemēram, novirzīšanu un caurules. Novirzīšana sūta izvadi uz citu vietu, piemēram, uz failu. Caurule sūta vienas komandas izvadi uz nākamo komandu:

```raku
shell 'echo hello | tr a-z A-Z';
```

Šeit čaula palaiž `echo`. Caurule sūta tā izvadi uz `tr`. Tad čaula izdrukā `HELLO`. Tas ir viegli, bet ir arī risks. Čaula pati nolasa virkni un atrod tās daļas. Varbūt virkne nāk no ievades, kurai jūs neuzticaties. Tad `shell` komanda ir bīstama. Lietojiet `run`, ja vien jums tiešām nevajag čaulas iespējas.

Abas funkcijas atgriež `Proc` objektu. Tas jums pasaka, kā programma beidza darbu. Parasti palaistā programma lieto to pašu izvadi, ko jūsu programma. Tāpēc jūs redzat tās izvadi ekrānā. Jūs varat šo izvadi arī noķert. Tam jums tā ir jāpieprasa. Nākamais temats rāda, kā to izdarīt.

{% include nav.html %}
