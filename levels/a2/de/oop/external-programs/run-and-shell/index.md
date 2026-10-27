---
title: run und shell
translations_gpt:
---

{% include menu.html %}

Es gibt zwei Wege, ein externes Programm zu starten. Der erste ist die Funktion `run`. Sie benutzt keine Shell. Eine Shell ist ein Programm, das Befehle liest und ausführt. `run` nimmt den Befehl und seine Argumente als **getrennte** Werte. Argumente sind die Werte, die Sie dem Befehl geben. Dann startet `run` das Programm direkt:

```raku
run 'echo', 'hello';
```

Das startet das Programm `echo` mit einem Argument: `hello`. Das Programm gibt `hello` aus. Die Argumente kommen einzeln beim Programm an. Also kann keine Shell Leerzeichen oder Sonderzeichen falsch verstehen. Darum ist `run` die sichere Standardwahl.

Die Funktion `shell` arbeitet anders. Sie gibt eine **einzelne Zeichenkette** an die Shell des Systems. Die Shell liest die Zeichenkette und führt sie aus. So können Sie Shell-Möglichkeiten wie Umleitungen und Pipes nutzen. Eine Umleitung schickt Ausgabe an einen anderen Ort, zum Beispiel in eine Datei. Eine Pipe schickt die Ausgabe eines Befehls an den nächsten:

```raku
shell 'echo hello | tr a-z A-Z';
```

Hier führt die Shell `echo` aus. Eine Pipe schickt die Ausgabe von `echo` an `tr`. Dann gibt die Shell `HELLO` aus. Das ist einfach, aber es gibt ein Risiko. Die Shell selbst liest die Zeichenkette und findet ihre Teile. Vielleicht kommt die Zeichenkette aus einer Eingabe, der Sie nicht vertrauen. Dann ist ein `shell`-Befehl gefährlich. Nehmen Sie `run`, außer Sie brauchen wirklich Shell-Möglichkeiten.

Beide Funktionen geben ein `Proc`-Objekt zurück. Es sagt Ihnen, wie das Programm geendet hat. Normalerweise benutzt das gestartete Programm dieselbe Ausgabe wie Ihr Programm. Also sehen Sie seine Ausgabe auf dem Bildschirm. Sie können diese Ausgabe auch auffangen. Dafür müssen Sie danach fragen. Das nächste Thema zeigt, wie das geht.

{% include nav.html %}
