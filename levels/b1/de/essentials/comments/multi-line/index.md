---
title: Mehrzeilige Kommentare
---

{% include menu.html %}

Wenn Ihr Kommentar länger als eine Zeile ist, haben Sie die Wahl. Sie können ein paar einzeilige Kommentare oder einen mehrzeiligen Kommentar schreiben.

Mehrzeilige Kommentare beginnen mit zwei Zeichen: ``#` ``. Danach folgt ein Paar aus einem öffnenden und einem schließenden Zeichen: `( )`, `{ }`, `[ ]` oder `< >`. Sie können sie auch wiederholen, zum Beispiel `(( ))`, `[[[ ]]]` und so weiter.

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
