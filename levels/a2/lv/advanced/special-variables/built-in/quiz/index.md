---
title: Viktorīna — Speciālie mainīgie
translations_gpt:
---

{% include menu.html %}

Kurš iebūvētais mainīgais glabā programmas komandrindas argumentus?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Komandrindas argumenti pienāk kā *saraksts*. Tāpēc mainīgajam ir sigils `@`. Tas ir arī dinamisks, tāpēc tam ir tvigils `*`. Rezultāts ir `@*ARGS`. `%*ENV` ir vides jauktenis. Tajā nav argumentu. `@*ARGV` ir nosaukums valodā Perl. Raku to nelieto.

</div>

{% include nav.html %}
