---
title: 'Tests 2 — nosacījums `if`'
---

{% include menu.html %}

Izlabojiet programmu. Tad atbildiet uz jautājumu.

{:.quiz-code .fill}
. | my $password = prompt 'Enter your password: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrect';
. | }

Tagad ielieciet pārbaudē `=`. Ko programma dara?

{:.quiz-select}
Vienmēr izdrukā ‘Correct’ | Jūsu atbilde:&nbsp; (: Vienmēr izdrukā ‘Correct’, Vienmēr izdrukā ’Incorrect’, Izdrukā ’Correct’ pareizām parolēm un ‘Incorrect’ nepareizām, Izdrukā ’Incorrect’ pareizām parolēm un ’Correct’ nepareizām :)

<div class="extended-explanation">Programma vienmēr izdrukā ‘Correct’. Šeit <code>$password = '*&(#&$#Y'</code> ir piešķīrums. Tas dod mainīgajam <code>$password</code> jaunu vērtību. Šī vērtība nav nulle, un tā nav tukša virkne. Tāpēc Raku to uzskata par <code>True</code>. Šeit programma nekad nepārbauda lietotāja paroli.<br/><br/>Un ja jūs ierakstāt <code>==</code>? Tad programma salūzt. Tā mēģina abas virknes pārvērst skaitļos. Tās ir lietotāja parole un pareizā parole. Tas nestrādā, un programma beidzas ar kļūdu.</div>

{% include quiz.html %}

{% include nav.html %}
