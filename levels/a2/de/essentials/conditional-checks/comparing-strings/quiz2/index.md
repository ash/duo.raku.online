---
title: Quiz 2 — die Bedingung in `if`*
---

{% include menu.html %}

Korrigieren Sie das Programm. Dann beantworten Sie die Frage.

{:.quiz-code .fill}
. | my $password = prompt 'Geben Sie Ihr Passwort ein: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Richtig';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Falsch';
. | }

Setzen Sie jetzt `=` in den Test. Was macht das Programm?

{:.quiz-select}
Druckt immer „Richtig“ | Ihre Antwort:&nbsp; (: Druckt immer „Richtig“, Druckt immer „Falsch“, Druckt „Richtig“ für richtige Passwörter und „Falsch“ für falsche, Druckt „Falsch“ für richtige Passwörter und „Richtig“ für falsche :)

<div class="extended-explanation">Das Programm gibt immer „Richtig“ aus. Hier ist <code>$password = '*&(#&$#Y'</code> eine Zuweisung. Die Zuweisung gibt der Variablen <code>$password</code> einen neuen Wert. Dieser Wert ist nicht null, und er ist keine leere Zeichenkette. Also sieht Raku ihn als <code>True</code>. Das Programm prüft das Passwort des Benutzers hier nie.<br/><br/>Was passiert, wenn Sie <code>==</code> eingeben? Dann bricht das Programm ab. Es versucht, beide Zeichenketten in Zahlen umzuwandeln. Das sind das Passwort vom Benutzer und das richtige Passwort. Das funktioniert nicht, und das Programm schlägt fehl.</div>

{% include quiz.html %}

{% include nav.html %}
