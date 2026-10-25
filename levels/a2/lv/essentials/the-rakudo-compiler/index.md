---
title: Kompilators Rakudo
translations_gpt:
---

{% include menu.html %}

**Rakudo** ir galvenais Raku kompilators. Šis kurss to lieto. Šodien Rakudo ir vispilnīgākais veids, kā palaist Raku. Tas ir arī ļoti labi pārbaudīts īstā darbā. Tāpēc, kad cilvēki saka «Raku kompilators», viņi parasti domā Rakudo.

Rakudo pats lielākoties ir uzrakstīts Raku valodā. Tā uzbūvei palīdz mazāka valoda. Šī valoda ir NQP, saīsinājums no «Not Quite Perl». Rakudo kompilē jūsu programmu baitkodā. Tad tas izpilda baitkodu virtuālajā mašīnā, ko sauc **MoarVM**. Kad jūs instalējat Rakudo, jūs saņemat arī MoarVM. Rakudo cenšas aptvert visu valodu. Vai jums vajag, lai strādā katra Raku daļa? Tad Rakudo ir drošākā izvēle.

Rakudo atbalsta Raku 6.d. Jaunas Rakudo versijas iznāk bieži. Tāpēc jūs ātri saņemat labojumus un jaunas iespējas.

## Virtuālā mašīna

Parasti Rakudo darbojas uz MoarVM. MoarVM ir virtuālā mašīna tieši Raku valodai. Bet Rakudo var strādāt arī ar citām virtuālajām mašīnām. Rakudo var uzbūvēt uz tām. Tomēr MoarVM ir standarta izvēle. Tai ir labs atbalsts. Šis kurss sagaida, ka jūs lietojat MoarVM. Tā ir galvenā atšķirība starp Rakudo un [Raku++](/lv/essentials/the-rakupp-compiler). Raku++ ir uzrakstīts C++ valodā. Tam nav vajadzīga sava virtuālā mašīna.

## Pirmkods un saites

Rakudo ir atvērtā koda projekts. Ikviens var vērot tā izstrādi:

* [rakudo.org](https://rakudo.org)
* [Rakudo GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
