---
title: 'Quiz 2 — condicio in `if`'
---

{% include menu.html %}

Corrige programma. Deinde ad quaestionem responde.

{:.quiz-code .fill}
. | my $password = prompt &apos;Enter your password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Correct&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Incorrect&apos;;
. | }

Nunc `=` in probationem pone. Quid programma facit?

{:.quiz-select}
Always prints ‘Correct’ | Your answer:&nbsp; (: Always prints ‘Correct’, Always prints ’Incorrect’, Prints ’Correct’ for correct passwords and ‘Incorrect’ for incorrect ones, Prints ’Incorrect’ for correct passwords and ’Correct’ for incorrect ones :)

<div class="extended-explanation">Programma semper ‘Correct’ imprimit. Hic <code>$password = '*&(#&$#Y'</code> est assignatio. Variabili <code>$password</code> novum valorem dat. Hic valor non est zero, neque est filum vacuum. Itaque Raku eum ut <code>True</code> videt. Hic programma tesseram usoris numquam probat.<br/><br/>Quid si <code>==</code> scribis? Tum programma frangitur. Ambo fila in numeros mutare temptat. Haec sunt tessera ab usore et tessera recta. Hoc non procedit, et programma deficit.</div>

{% include quiz.html %}

{% include nav.html %}
