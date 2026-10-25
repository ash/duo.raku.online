---
title: Quiz — Postfix-`for`*
---

{% include menu.html %}

Versuchen Sie, das Programm fertigzuschreiben. Es muss die Postfix-Form von `for` verwenden und den folgenden Text ausgeben:

    A
    A
    B
    B
    C
    C

Hier ist ein Entwurf des Codes:

{:.quiz-code}
. |
{ | ␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
. | &nbsp;&nbsp;&nbsp;&nbsp;.say;
} | ␣ for &apos;A&apos;..&apos;C&apos;;

<div class="extended-explanation">Dieser Code zeigt einen Codeblock mit dem Postfix-<code>for</code>. Beachten Sie, dass <code>for</code> in derselben Zeile wie die schließende geschweifte Klammer stehen muss. In einer neuen Zeile gehört der Block nicht mehr zur Schleife. Dann bekommen Sie einen Kompilierungsfehler: <code>Missing block</code>. Es ist wahrscheinlich besser, Codeblöcke nicht so mit Postfix-Formen zu verwenden.</div>

{% include quiz.html %}

{% include nav.html %}
