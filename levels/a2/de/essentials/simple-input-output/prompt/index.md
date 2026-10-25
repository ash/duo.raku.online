---
title: Eingabe mit `prompt`
---

{% include menu.html %}

`prompt` ist das Gegenteil von `say`. Es wartet auf den Benutzer. Der Benutzer tippt etwas und drückt Enter. Dann schickt `prompt` die Eingabe als Zeichenkette an das Programm. Sie können das Ergebnis von `prompt` nehmen und an `say` geben. Dann wiederholt das Programm, was der Benutzer tippt. Schreiben wir so ein Programm:

```raku
say prompt;
```

Führen Sie dieses Programm aus. Vielleicht verstehen Sie nicht, was passiert. Das Programm wartet nur auf eine Eingabe. Deshalb ist es gut, zuerst eine Nachricht zu drucken. Dann ist das Programm leichter zu benutzen. Sie brauchen dafür kein eigenes `say`. Sie können die Nachricht an `prompt` geben:

```raku
prompt 'Welche Sprache wirst du lernen? '
```

Dieser Abschnitt ist bald zu Ende. Aber zuerst setzen wir alle Teile zusammen. Das neue Programm fragt, was der Benutzer möchte. Dann druckt es einen Satz mit dem Text des Benutzers.

```raku
say 'Du wirst ', prompt 'Welche Sprache wirst du lernen? ', ' lernen';
```

Wenn Sie `Raku` eingeben, druckt das Programm diesen Satz:

    Du wirst Raku lernen

Okay, jetzt können wir mit dem Programm sprechen. Und wir können das Programm mit uns sprechen lassen!

Beachten Sie: `say` muss die Zeichenketten kennen, bevor es sie druckt. Deshalb führt Raku zuerst `prompt` aus. So läuft der Dialog in der richtigen Reihenfolge:

```console
$ raku t.raku 
Welche Sprache wirst du lernen? Raku
Du wirst Raku lernen
```

{% include nav.html %}
