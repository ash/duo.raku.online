---
title: Quiz — Postfix-`for`*
---

{% include menu.html %}

Versuchen Sie, das Programm so fertigzustellen, dass es die Postfix-Form von `for` verwendet und den folgenden Text ausgibt:

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

<div class="extended-explanation">Dieser Code ist ein Beispiel für einen Codeblock mit dem Postfix-<code>for</code>. Beachten Sie, dass <code>for</code> in derselben Zeile wie die schließende geschweifte Klammer stehen muss. Wenn Sie es in eine neue Zeile setzen, wird der Block von der Schleife getrennt, und Sie bekommen einen Kompilierungsfehler: <code>Missing block</code>. Es ist wahrscheinlich besser, Codeblöcke nicht auf diese Weise mit Postfix-Konstrukten zu verwenden.</div>

{% include quiz.html %}

{% include nav.html %}
