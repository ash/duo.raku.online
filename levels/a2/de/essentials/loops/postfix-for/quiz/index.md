---
title: Quiz — Postfix-`for`*
---

{% include menu.html %}

Schreiben Sie das Programm fertig. Es muss `for` nach dem Block verwenden, und es muss diesen Text ausgeben:

    A
    A
    B
    B
    C
    C

Hier ist der Anfang des Codes:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Dieser Code verwendet einen Codeblock mit <code>for</code> dahinter. Beachten Sie, dass <code>for</code> in derselben Zeile wie die schließende geschweifte Klammer stehen muss. Wenn Sie es in eine neue Zeile setzen, gehört der Block nicht mehr zur Schleife. Dann bekommen Sie einen Fehler: <code>Missing block</code>. Es ist besser, Codeblöcke nicht so mit Postfix-Formen zu verwenden.</div>

{% include quiz.html %}

{% include nav.html %}
