---
title: run un shell
translations_gpt:
---

{% include menu.html %}

Ir divi veidi, kā palaist ārēju programmu. Funkcija `run` ņem komandu un tās argumentus kā **atsevišķas** vērtības. Tā palaiž programmu tieši, bez čaulas:

```raku
run 'echo', 'hello';
```

Tas palaiž programmu `echo` ar vienu argumentu `hello`, tāpēc tā izdrukā `hello`. Argumenti tiek padoti atsevišķi, tāpēc čaula nevar pārprast atstarpes vai īpašās rakstzīmes. Tieši tāpēc `run` ir drošais noklusējums.

Funkcija `shell` strādā citādi. Tā padod **vienu virkni** sistēmas čaulai, kas to nolasa un izpilda. Tas ļauj lietot čaulas iespējas, piemēram, caurules un novirzīšanu:

```raku
shell 'echo hello | tr a-z A-Z';
```

Šeit čaula palaiž `echo` un ar cauruli sūta tā izvadi caur `tr`. Tad tā izdrukā `HELLO`. Tas ir ērti, bet jums jābūt uzmanīgiem. Čaula pati nosaka, ko virkne nozīmē. Tāpēc ir bīstami būvēt `shell` komandu no ievades, kurai neuzticaties. Lietojiet `run`, ja vien jums tiešām nevajag čaulas iespējas.

Abas funkcijas atgriež `Proc` objektu, kas apraksta, kā programma beidza darbu. Pēc noklusējuma palaistā programma dala jūsu programmas izvadi. Tāpēc tas, ko tā izdrukā, parādās ekrānā. Lai šo izvadi tā vietā noķertu, jums tā ir jāpieprasa. Par to ir nākamais temats.

{% include nav.html %}
