---
title: 'Quiz 2 — condicio in `if`'
---

{% include menu.html %}

Primum programma corrige, et deinde ad quaestionem responde.

{:.quiz-code .fill}
. | my $password = prompt &apos;Enter your password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Correct&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Incorrect&apos;;
. | }

Quid hoc programma facit cum probatio `=` adhibet?

{:.quiz-select}
Always prints ‘Correct’ | Your answer:&nbsp; (: Always prints ‘Correct’, Always prints ’Incorrect’, Prints ’Correct’ for correct passwords and ‘Incorrect’ for incorrect ones, Prints ’Incorrect’ for correct passwords and ’Correct’ for incorrect ones :)

<div class="extended-explanation">Programma semper ‘Correct’ imprimit, quia <code>$password = '*&(#&$#Y'</code> est assignatio. Variabili <code>$password</code> novum valorem dat. Hic valor neque zero neque filum vacuum est, itaque ut <code>True</code> valet. In hoc casu tessera usoris numquam probatur.<br/><br/>Si <code>==</code> scribis, programma frangetur. Ambo fila in numeros convertere temptat, et hoc deficit. Duo fila sunt tessera usoris et tessera recta.</div>

{% include quiz.html %}

{% include nav.html %}
