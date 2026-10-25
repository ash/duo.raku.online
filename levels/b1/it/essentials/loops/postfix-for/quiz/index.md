---
title: Quiz — Postfisso `for`*
---

{% include menu.html %}

Prova a completare il programma. Deve usare la forma postfissa di `for` e stampare il testo seguente:

    A
    A
    B
    B
    C
    C

Ecco una bozza del codice:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;$_.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;$_.say;
} | ␣ for 'A'..'C';

<div class="extended-explanation">Questo codice mostra un blocco di codice con il <code>for</code> postfisso. Nota che <code>for</code> deve essere sulla stessa riga della parentesi graffa di chiusura. Su una nuova riga, il blocco non fa più parte del ciclo. Allora ottieni un errore di compilazione: <code>Missing block</code>. Probabilmente è meglio non usare blocchi di codice con forme postfisse in questo modo.</div>

{% include quiz.html %}

{% include nav.html %}
