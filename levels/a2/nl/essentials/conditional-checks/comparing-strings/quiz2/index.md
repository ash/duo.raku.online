---
title: Quiz 2 — de voorwaarde in `if`*
---

{% include menu.html %}

Verbeter het programma. Beantwoord dan de vraag.

{:.quiz-code .fill}
. | my $password = prompt 'Voer je wachtwoord in: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Correct';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Incorrect';
. | }

Zet nu `=` in de test. Wat doet het programma?

{:.quiz-select}
Print altijd ‘Correct’ | Jouw antwoord:&nbsp; (: Print altijd ‘Correct’, Print altijd ‘Incorrect’, Print ‘Correct’ voor correcte wachtwoorden en ‘Incorrect’ voor onjuiste wachtwoorden, Print ‘Incorrect’ voor correcte wachtwoorden en ‘Correct’ voor onjuiste wachtwoorden :)

<div class="extended-explanation">Het programma print altijd ‘Correct’. Hier is <code>$password = '*&(#&$#Y'</code> een toewijzing. Die geeft de variabele <code>$password</code> een nieuwe waarde. Deze waarde is niet nul, en het is ook geen lege string. Dus ziet Raku die als <code>True</code>. Het programma controleert hier nooit het wachtwoord van de gebruiker.<br/><br/>Wat als je <code>==</code> typt? Dan gaat het programma fout. Het probeert beide strings om te zetten naar getallen. Dat zijn het wachtwoord van de gebruiker en het juiste wachtwoord. Dat lukt niet, en het programma faalt.</div>

{% include quiz.html %}

{% include nav.html %}
