---
title: Quiz 2 — la condizione in `if`*
---

{% include menu.html %}

Correggi il programma. Poi rispondi alla domanda.

{:.quiz-code .fill}
. | my $password = prompt &apos;Inserisci la tua password: &apos;;
. | 
eq = | if $password ␣␣ &apos;*&(#&$#Y&apos; {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Corretto&apos;;
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;Errato&apos;;
. | }

Ora metti `=` nel test. Che cosa fa il programma?

{:.quiz-select}
Stampa sempre ‘Corretto’ | La tua risposta:&nbsp; (: Stampa sempre ‘Corretto’, Stampa sempre ‘Errato’, Stampa ‘Corretto’ per password corrette e ‘Errato’ per password errate, Stampa ‘Errato’ per password corrette e ‘Corretto’ per password errate :)

<div class="extended-explanation">Il programma stampa sempre ‘Corretto’. Qui <code>$password = '*&(#&$#Y'</code> è un'assegnazione. Dà alla variabile <code>$password</code> un nuovo valore. Questo valore non è zero e non è una stringa vuota. Quindi Raku lo vede come <code>True</code>. Qui il programma non controlla mai la password dell'utente.<br/><br/>E se scrivi <code>==</code>? Allora il programma si blocca. Prova a cambiare tutte e due le stringhe in numeri. Sono la password dell'utente e la password corretta. Questo non funziona, e il programma fallisce.</div>

{% include quiz.html %}

{% include nav.html %}
