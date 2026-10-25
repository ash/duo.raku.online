---
title: Eingabe mit `prompt`
---

{% include menu.html %}

Das Gegenteil von `say` ist `prompt`. Es wartet, bis der Benutzer etwas eingibt und Enter drückt. Dann sendet es die Eingabe als Zeichenkette an das Programm. Sie können das Ergebnis von `prompt` nehmen und an `say` übergeben. Dann druckt das Programm genau das, was der Benutzer eingibt. Lassen Sie uns so ein Programm schreiben:

```raku
say prompt;
```

Wenn Sie dieses Programm ausführen, kann es Sie verwirren. Das Programm wartet nur auf eine Eingabe. Deshalb ist es gut, eine Eingabeaufforderung für den Benutzer zu drucken. Das macht das Programm benutzerfreundlicher. Sie brauchen dafür kein eigenes `say`. Übergeben Sie die Nachricht einfach an `prompt`:

```raku
prompt 'Welche Sprache wirst du lernen? '
```

Bevor wir diesen Abschnitt beenden, setzen wir alle Teile zusammen. Wir schreiben ein Programm, das fragt, was der Benutzer möchte. Dann druckt es einen Satz mit dem Text, den der Benutzer eingegeben hat.

```raku
say 'Du wirst ', prompt 'Welche Sprache wirst du lernen? ', ' lernen';
```

Wenn Sie `Raku` eingegeben haben, druckt das Programm den folgenden Satz:

    Du wirst Raku lernen

Okay, wir können jetzt mit dem Programm sprechen. Und wir können es mit uns sprechen lassen!

Beachten Sie, dass `say` die Zeichenketten kennen muss, bevor es sie druckt. Deshalb führt Raku zuerst `prompt` aus. So bleibt der Dialog in der richtigen Reihenfolge:

```console
$ raku t.raku 
Welche Sprache wirst du lernen? Raku
Du wirst Raku lernen
```

{% include nav.html %}
