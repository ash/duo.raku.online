---
title: Methoden zur Laufzeit hinzufügen
translations_gpt:
---

{% include menu.html %}

Sie können das MOP nicht nur benutzen, um einen Typ zu untersuchen. Es kann einen Typ auch **ändern**, während das Programm läuft. Die Metamethode `.^add_method` fügt einer Klasse eine neue Methode hinzu:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

Die Klasse `Empty` hat gar keine Methoden. Dann fügt `Empty.^add_method('greet', …)` eine Methode namens `greet` hinzu, die als anonyme `method { … }` angegeben ist. Von da an reagiert jedes `Empty`-Objekt auf `.greet`. Es funktioniert genauso, als hätten Sie die Methode in die Klasse geschrieben.

Das ist echte Metaprogrammierung. Wir sagen dem Metaobjekt für `Empty`, dass es eine neue Methode wachsen lassen soll. Dasselbe Protokoll steckt hinter Möglichkeiten, die Sie schon benutzt haben. Im Prinzip funktioniert das so. Wenn Sie `class`, `role`, `has` oder `method` schreiben, baut der Compiler Ihren Typ für Sie. Er macht das mit MOP-Methoden wie `.^add_method` und `.^add_attribute`.

Wir sagen „im Prinzip“, weil das ein Modell der Sprache ist. Es ist kein Versprechen für einen bestimmten Compiler. Das Objektsystem ist über das MOP *definiert*. Aber schickt eine bestimmte Implementierung wirklich jede Deklaration durch diese Metamethoden? Und können Sie sehen, wie sie das tut? Das ist jeder Implementierung selbst überlassen. Aus demselben Grund hängt auch das eigene *Aufrufen* dieser Metamethoden von der Implementierung ab. Compiler können verschiedene Metamethoden anbieten, und ihr genaues Verhalten kann sich unterscheiden. Code mit `.^add_method` und ähnlichen Methoden funktioniert also vielleicht nicht auf jedem Raku gleich.

Methoden zur Laufzeit hinzuzufügen ist ein starkes Werkzeug, aber Sie werden es selten brauchen. Die meisten Programme benutzen es nie. Aber genau das macht das Objektsystem von Raku offen. Die Regeln für Klassen sind selbst mit dem MOP geschrieben, also können Sie sie erweitern. Im alltäglichen Code ist das Untersuchen der Teil des MOP, den Sie wirklich benutzen werden. Diese Metamethoden haben Sie im vorigen Thema gesehen.

{% include nav.html %}
