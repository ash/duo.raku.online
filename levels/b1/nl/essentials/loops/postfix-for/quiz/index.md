---
title: Quiz — Postfix `for`*
---

{% include menu.html %}

Probeer het programma af te maken. Het moet de postfix-vorm van `for` gebruiken en de volgende tekst afdrukken:

    A
    A
    B
    B
    C
    C

Hier is een concept van de code:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Deze code toont een codeblok met de postfix <code>for</code>. Merk op dat <code>for</code> op dezelfde regel moet staan als de sluitende accolade. Op een nieuwe regel hoort het blok niet meer bij de lus. Dan krijg je een compilatiefout: <code>Missing block</code>. Het is waarschijnlijk beter om codeblokken niet zo met postfix-vormen te gebruiken.</div>

{% include quiz.html %}

{% include nav.html %}
