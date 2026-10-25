---
title: Kompilators Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** ir Raku atsauces implementācija: galvenais, standarta kompilators. Šis kurss to izmanto. Šodien tas ir vispilnīgākais veids, kā palaist Raku. Tas ir arī labi pārbaudīts praksē. Tāpēc, kad cilvēki saka «Raku kompilators», viņi parasti domā Rakudo.

Rakudo pats lielākoties ir uzrakstīts Raku valodā. Tā uzbūvei palīdz mazāka valoda, NQP («Not Quite Perl»). Jūsu programma tiek kompilēta baitkodā un darbojas virtuālajā mašīnā, ko sauc **MoarVM**. MoarVM jūs saņemat automātiski, kad instalējat Rakudo. Rakudo cenšas aptvert visu valodu. Tāpēc tā ir drošākā izvēle, ja jādarbojas katrai Raku daļai.

Rakudo atbalsta Raku 6.d. Jauni izlaidumi iznāk bieži, tāpēc labojumi un jaunas iespējas jūs sasniedz ātri.

## Virtuālā mašīna

Pēc noklusējuma Rakudo darbojas uz MoarVM, virtuālās mašīnas, kas īpaši veidota Raku valodai. Uzbūve nepiesaista Rakudo vienai mašīnai. To var būvēt arī uz citām virtuālajām mašīnām. Bet MoarVM ir standarta izvēle ar labu atbalstu. Šis kurss pieņem, ka jūs to lietojat. Tā ir galvenā atšķirība no [Raku++](/lv/essentials/the-rakupp-compiler). Raku++ ir uzrakstīts C++ valodā, un tam nav vajadzīga sava virtuālā mašīna.

## Pirmkods un saites

Rakudo ir atvērtā koda projekts, un ikviens var sekot tā izstrādei:

* [rakudo.org](https://rakudo.org)
* [Rakudo GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
