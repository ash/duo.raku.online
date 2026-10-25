---
title: Quiz — Postfix-`for`*
---

{% include menu.html %}

Schreiben Sie das Programm fertig. Setzen Sie `for` hinter den Block. Das Programm muss diesen Text ausgeben:

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

<div class="extended-explanation">Hier steht <code>for</code> hinter einem Codeblock. Das Wort <code>for</code> muss in derselben Zeile wie die <code>}</code> stehen. Wenn <code>for</code> in einer neuen Zeile steht, hat die Schleife keinen Block. Dann zeigt Raku einen Fehler, bevor das Programm läuft: <code>Missing block</code>. Versuchen Sie, Blöcke nicht so zu verwenden.</div>

{% include quiz.html %}

{% include nav.html %}
