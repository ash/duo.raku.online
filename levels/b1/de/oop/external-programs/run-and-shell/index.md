---
title: run und shell
translations_gpt:
---

{% include menu.html %}

Es gibt zwei Wege, ein externes Programm zu starten. Die Funktion `run` nimmt den Befehl und seine Argumente als **getrennte** Werte. Sie führt das Programm direkt aus, ohne eine Shell:

```raku
run 'echo', 'hello';
```

Das führt das Programm `echo` mit dem einzigen Argument `hello` aus, also gibt es `hello` aus. Die Argumente werden getrennt übergeben, also kann eine Shell Leerzeichen oder Sonderzeichen nicht falsch deuten. Deshalb ist `run` die sichere Standardwahl.

Die Funktion `shell` arbeitet anders. Sie übergibt eine **einzelne Zeichenkette** an die System-Shell, die sie liest und ausführt. Damit können Sie Shell-Möglichkeiten wie Pipes und Umleitungen nutzen:

```raku
shell 'echo hello | tr a-z A-Z';
```

Hier führt die Shell `echo` aus und schickt seine Ausgabe mit einer Pipe durch `tr`. Dann gibt sie `HELLO` aus. Das ist bequem, aber Sie müssen vorsichtig sein. Die Shell selbst entscheidet, was die Zeichenkette bedeutet. Darum ist es gefährlich, einen `shell`-Befehl aus Eingaben zu bauen, denen Sie nicht vertrauen. Verwenden Sie `run`, wenn Sie nicht wirklich Shell-Möglichkeiten brauchen.

Beide Funktionen geben ein `Proc`-Objekt zurück, das beschreibt, wie das Programm geendet hat. Standardmäßig teilt das gestartete Programm die Ausgabe Ihres Programms. Was es ausgibt, erscheint also auf dem Bildschirm. Um diese Ausgabe stattdessen aufzufangen, müssen Sie sie anfordern. Darum geht es im nächsten Thema.

{% include nav.html %}
