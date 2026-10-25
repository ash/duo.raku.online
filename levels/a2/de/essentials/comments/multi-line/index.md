---
title: Mehrzeilige Kommentare
---

{% include menu.html %}

Manchmal ist ein Kommentar länger als eine Zeile. Dann haben Sie zwei Möglichkeiten. Sie können ein paar einzeilige Kommentare schreiben. Oder Sie können einen mehrzeiligen Kommentar schreiben.

Ein mehrzeiliger Kommentar beginnt mit zwei Zeichen: ``#` ``. Dann kommt ein Paar Klammern: `( )`, `{ }`, `[ ]` oder `< >`. Sie können sie auch wiederholen: `(( ))`, `[[[ ]]]` und so weiter.

Zum Beispiel:

```raku
my $name;
#`( Wir werden den Benutzer fragen,
seinen Namen einzugeben, und dann
die Eingabe in einer Variablen speichern. )

$name = prompt 'Wie heißt du? ';
#`{ Das Programm wartet jetzt,
bis der Benutzer den Namen eingibt
und Enter drückt. }

say $name; #`( Und jetzt können wir es ausdrucken )
```

{% include nav.html %}
