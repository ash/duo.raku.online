---
title: 'Tests 2 — nosacījums `if`'
---

{% include menu.html %}

Vispirms izlabojiet programmu un tad atbildiet uz jautājumu.

{:.quiz-code .fill}
. | my $password = prompt 'Enter your password: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrect';
. | }

Ko šī programma dara, kad pārbaude izmanto `=`?

{:.quiz-select}
Vienmēr izdrukā ‘Correct’ | Jūsu atbilde:&nbsp; (: Vienmēr izdrukā ‘Correct’, Vienmēr izdrukā ’Incorrect’, Izdrukā ’Correct’ pareizām parolēm un ‘Incorrect’ nepareizām, Izdrukā ’Incorrect’ pareizām parolēm un ’Correct’ nepareizām :)

<div class="extended-explanation">Programma vienmēr izdrukā ‘Correct’, jo <code>$password = '*&(#&$#Y'</code> ir piešķīrums. Tas dod mainīgajam <code>$password</code> jaunu vērtību. Šī vērtība nav ne nulle, ne tukša virkne, tāpēc tā tiek uzskatīta par <code>True</code>. Šajā gadījumā lietotāja parole nekad netiek pārbaudīta.<br/><br/>Ja jūs ierakstīsiet <code>==</code>, programma salūzīs. Tā mēģina abas virknes pārvērst skaitļos, un tas neizdodas. Šīs divas virknes ir lietotāja parole un pareizā parole.</div>

{% include quiz.html %}

{% include nav.html %}
