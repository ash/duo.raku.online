---
title: Viktorīna — Speciālie mainīgie
translations_gpt:
---

{% include menu.html %}

Kurā iebūvētajā mainīgajā jūs varat atrast programmas komandrindas argumentus?

{:.quiz}
0 | `$*ARGS`
1 | `@*ARGS`
0 | `@*ARGV`
0 | `%*ENV`

{% include quiz.html %}

<div class="extended-explanation">

Komandrindas argumenti pienāk kā *saraksts*. Tāpēc mainīgajam ir sigils `@` un dinamiskais tvigils `*`: `@*ARGS`. `%*ENV` ir vides jauktenis, nevis argumenti. `@*ARGV` ir tas, kā to raksta Perl, un Raku šo nosaukumu nelieto.

</div>

{% include nav.html %}
