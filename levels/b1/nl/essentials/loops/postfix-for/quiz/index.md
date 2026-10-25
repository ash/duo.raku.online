---
title: Quiz — Postfix `for`*
---

{% include menu.html %}

Probeer het programma af te maken zodat het de postfix-vorm van `for` gebruikt en de volgende tekst afdrukt:

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

<div class="extended-explanation">Deze code is een voorbeeld van een codeblok met de postfix <code>for</code>. Merk op dat <code>for</code> op dezelfde regel moet staan als de sluitende accolade. Als je het op een nieuwe regel zet, raakt het blok los van de lus en krijg je een compilatiefout: <code>Missing block</code>. Het is waarschijnlijk beter om op deze manier geen codeblokken met postfix-constructies te gebruiken.</div>

{% include quiz.html %}

{% include nav.html %}
