---
title: Quiz 2 — die Bedingung in `if`*
---

{% include menu.html %}

Korrigieren Sie zuerst das Programm, und beantworten Sie dann die Frage.

{:.quiz-code .fill}
. | my $password = prompt 'Geben Sie Ihr Passwort ein: ';
. | 
eq = | if $password ␣␣ '*&(#&$#Y' {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Richtig';
. | }
. | else {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'Falsch';
. | }

Was macht dieses Programm, wenn im Test `=` steht?

{:.quiz-select}
Druckt immer „Richtig“ | Ihre Antwort:&nbsp; (: Druckt immer „Richtig“, Druckt immer „Falsch“, Druckt „Richtig“ für richtige Passwörter und „Falsch“ für falsche, Druckt „Falsch“ für richtige Passwörter und „Richtig“ für falsche :)

<div class="extended-explanation">Das Programm gibt immer „Richtig“ aus, weil <code>$password = '*&(#&$#Y'</code> eine Zuweisung ist. Die Zuweisung gibt der Variablen <code>$password</code> einen neuen Wert. Dieser Wert ist weder null noch eine leere Zeichenkette, also zählt er als <code>True</code>. In diesem Fall wird das Passwort des Benutzers nie geprüft.<br/><br/>Wenn Sie <code>==</code> eingeben, bricht das Programm ab. Es versucht, beide Zeichenketten in Zahlen umzuwandeln, und das schlägt fehl. Die beiden Zeichenketten sind das Passwort des Benutzers und das richtige Passwort.</div>

{% include quiz.html %}

{% include nav.html %}
