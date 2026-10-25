---
title: Quiz — Postfisso `for`*
---

{% include menu.html %}

Prova a completare il programma in modo che usi la forma postfissa di `for` e stampi il testo seguente:

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

<div class="extended-explanation">Questo codice è un esempio di blocco di codice con il <code>for</code> postfisso. Nota che <code>for</code> deve essere sulla stessa riga della parentesi graffa di chiusura. Se lo metti su una nuova riga, il blocco si separa dal ciclo e ottieni un errore di compilazione: <code>Missing block</code>. Probabilmente è meglio non usare blocchi di codice con costrutti postfissi in questo modo.</div>

{% include quiz.html %}

{% include nav.html %}
