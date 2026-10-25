---
title: Quiz — Postfisso `for`*
---

{% include menu.html %}

Completa il programma. Deve usare `for` dopo il blocco e deve stampare questo testo:

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

<div class="extended-explanation">Questo codice usa un blocco di codice con <code>for</code> dopo di esso. Nota che <code>for</code> deve essere sulla stessa riga della parentesi graffa di chiusura. Se lo metti su una nuova riga, il blocco non fa più parte del ciclo. Allora ricevi un errore: <code>Missing block</code>. È meglio non usare blocchi di codice con forme postfisse in questo modo.</div>

{% include quiz.html %}

{% include nav.html %}
