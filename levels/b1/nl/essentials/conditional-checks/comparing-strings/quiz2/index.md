---
title: Quiz 2 — de voorwaarde in `if`*
---

{% include menu.html %}

Verbeter eerst het programma, en beantwoord dan de vraag.

{:.quiz-code .fill}
. | my $password = prompt 'Voer je wachtwoord in: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrect';
. | }

Wat doet dit programma als de test `=` gebruikt?

{:.quiz-select}
Print altijd ‘Correct’ | Jouw antwoord:&nbsp; (: Print altijd ‘Correct’, Print altijd ‘Incorrect’, Print ‘Correct’ voor correcte wachtwoorden en ‘Incorrect’ voor onjuiste wachtwoorden, Print ‘Incorrect’ voor correcte wachtwoorden en ‘Correct’ voor onjuiste wachtwoorden :)

<div class="extended-explanation">Het programma print altijd ‘Correct’, omdat <code>$password = '*&(#&$#Y'</code> een toewijzing is. Die geeft de variabele <code>$password</code> een nieuwe waarde. Deze waarde is geen nul en ook geen lege string, dus telt die als <code>True</code>. In dit geval wordt het wachtwoord van de gebruiker nooit gecontroleerd.<br/><br/>Als je <code>==</code> typt, gaat het programma fout. Het probeert beide strings om te zetten naar getallen, en dat mislukt. De twee strings zijn het wachtwoord van de gebruiker en het juiste wachtwoord.</div>

{% include quiz.html %}

{% include nav.html %}
