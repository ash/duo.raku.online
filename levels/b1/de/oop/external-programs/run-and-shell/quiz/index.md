---
title: 'Quiz — Programme ausführen'
translations_gpt:
---

{% include menu.html %}

Welche Funktion schickt ihren Befehl durch die System-**Shell** und erlaubt Pipes und Umleitungen?

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` übergibt eine einzelne Zeichenkette an die Shell, die Möglichkeiten wie Pipes versteht. `run` startet ein Programm direkt, mit getrennten Argumenten und ohne Shell. Das ist sicherer, also ist `run` die bessere Standardwahl.

</div>

{% include nav.html %}
