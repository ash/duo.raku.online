---
title: Quiz — Postfix `for`*
---

{% include menu.html %}

Maak het programma af. Het moet `for` na het blok gebruiken, en het moet deze tekst afdrukken:

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

<div class="extended-explanation">Deze code gebruikt een codeblok met <code>for</code> erachter. Let op: <code>for</code> moet op dezelfde regel staan als de sluitende accolade. Als je het op een nieuwe regel zet, hoort het blok niet meer bij de lus. Dan krijg je een fout: <code>Missing block</code>. Het is beter om zo geen codeblokken met postfix-vormen te gebruiken.</div>

{% include quiz.html %}

{% include nav.html %}
