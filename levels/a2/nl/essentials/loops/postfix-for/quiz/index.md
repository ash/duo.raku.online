---
title: Quiz — Postfix `for`*
---

{% include menu.html %}

Maak het programma af. Zet `for` na het blok. Het programma moet deze tekst afdrukken:

    A
    A
    B
    B
    C
    C

Hier is het begin van de code:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Hier staat <code>for</code> achter een codeblok. Het woord <code>for</code> moet op dezelfde regel staan als de <code>}</code>. Als <code>for</code> op een nieuwe regel staat, heeft de lus geen blok. Dan toont Raku een fout voordat het programma draait: <code>Missing block</code>. Probeer blokken niet op deze manier te gebruiken.</div>

{% include quiz.html %}

{% include nav.html %}
