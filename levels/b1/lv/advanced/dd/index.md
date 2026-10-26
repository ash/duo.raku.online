---
title: 'Atkļūdošana ar `dd`'
translations_gpt:
---

{% include menu.html %}

Programmu var atkļūdot dažādos veidos. Jūs varat vienkārši izdrukāt vērtības ar `say`. Vai arī jūs varat izmantot sarežģītākus rīkus, kas izseko programmas darbu. Šajā sadaļā mēs aplūkojam noderīgo rutīnu `dd`. Tā nāk kopā ar Rakudo kompilatoru, bet Raku valodas standarts to neietver.

Nosaukums `dd` nozīmē _data dumper_ (datu izmetējs). Rutīnas `say` un `put` ir paredzētas programmas parastajai izvadei. Bet `dd` izdrukā vērtību formā, kas ir noderīga izstrādātājiem. Tā ir tā pati kodam līdzīgā forma, ko jūs iegūstat no metodes [`.raku`](/lv/advanced/representations/raku-method). Mēs redzējām šo metodi iepriekšējā sadaļā. `dd` drukā standarta kļūdu plūsmā. Tāpēc tās izvade nesajaucas ar to, ko jūsu programma izdrukā lietotājam.

{% include nav.html %}
