---
title: 'Quiz — Programme ausführen'
translations_gpt:
---

{% include menu.html %}

Welche Funktion schickt ihren Befehl durch die System-**Shell**? Mit dieser Funktion können Sie Pipes und Umleitungen nutzen.

{:.quiz}
0 | `run`
1 | `shell`
0 | `exec`
0 | `system`

{% include quiz.html %}

<div class="extended-explanation">

`shell` gibt eine einzelne Zeichenkette an die Shell. Die Shell versteht Möglichkeiten wie Pipes. `run` startet ein Programm direkt. Die Funktion nimmt getrennte Argumente und benutzt keine Shell. Das ist sicherer. Darum ist `run` die bessere Standardwahl.

</div>

{% include nav.html %}
