---
title: Quiz 2 — la condizione in `if`*
---

{% include menu.html %}

Prima correggi il programma, e poi rispondi alla domanda.

{:.quiz-code .fill}
. | my $password = prompt &apos;Inserisci la tua password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Corretto&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Errato&apos;;
. | }

Che cosa fa questo programma quando il test usa `=`?

{:.quiz-select}
Stampa sempre ‘Corretto’ | La tua risposta:&nbsp; (: Stampa sempre ‘Corretto’, Stampa sempre ‘Errato’, Stampa ‘Corretto’ per password corrette e ‘Errato’ per password errate, Stampa ‘Errato’ per password corrette e ‘Corretto’ per password errate :)

<div class="extended-explanation">Il programma stampa sempre ‘Corretto’, perché <code>$password = '*&(#&$#Y'</code> è un'assegnazione. Dà alla variabile <code>$password</code> un nuovo valore. Questo valore non è né zero né una stringa vuota, quindi vale come <code>True</code>. In questo caso, la password dell'utente non viene mai controllata.<br/><br/>Se scrivi <code>==</code>, il programma si interromperà. Prova a convertire tutte e due le stringhe in numeri, e questo fallisce. Le due stringhe sono la password dell'utente e la password corretta.</div>

{% include quiz.html %}

{% include nav.html %}
