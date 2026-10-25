---
title: Quiz — Postfisso `for`*
---

{% include menu.html %}

Completa il programma. Metti `for` dopo il blocco. Il programma deve stampare questo testo:

    A
    A
    B
    B
    C
    C

Ecco l'inizio del codice:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;$_.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;$_.say;
} | ␣ for 'A'..'C';

<div class="extended-explanation">Qui c'è un blocco di codice con <code>for</code> dopo. La parola <code>for</code> deve essere sulla stessa riga di <code>}</code>. Se <code>for</code> è su una nuova riga, il ciclo non ha un blocco. Allora Raku mostra un errore prima di eseguire il programma: <code>Missing block</code>. Cerca di non usare i blocchi in questo modo.</div>

{% include quiz.html %}

{% include nav.html %}
