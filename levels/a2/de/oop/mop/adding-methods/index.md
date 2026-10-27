---
title: Methoden zur Laufzeit hinzufügen
translations_gpt:
---

{% include menu.html %}

Das MOP ist nicht nur zum Hineinsehen in Typen da. Es kann einen Typ auch **ändern**, während das Programm läuft. Die Metamethode `.^add_method` fügt einer Klasse eine neue Methode hinzu:

```raku
class Empty {
}

Empty.^add_method('greet', method { 'hi' });

say Empty.new.greet; # hi
```

Die Klasse `Empty` hat gar keine Methoden. Dann fügt `Empty.^add_method('greet', …)` ihr eine Methode hinzu. Ihr Name ist `greet`. Die Methode selbst ist eine anonyme `method { … }`. Anonym heißt: Sie hat keinen Namen. Danach können Sie `.greet` auf jedem `Empty`-Objekt aufrufen. Das funktioniert genauso wie bei einer Methode in der Klasse.

Das ist echte Metaprogrammierung. Metaprogrammierung ist Code, der mit Code arbeitet. Hier sagen wir dem Metaobjekt von `Empty`, es soll eine neue Methode wachsen lassen. Dasselbe Protokoll steckt hinter Dingen, die Sie schon benutzen. Die Idee sieht so aus. Sie schreiben `class`, `role`, `has` oder `method`. Dann baut der Compiler Ihren Typ für Sie. Er benutzt dafür MOP-Methoden wie `.^add_method` und `.^add_attribute`.

Wir sagen nicht ohne Grund „die Idee“. Das ist ein Modell der Sprache. Es ist kein Versprechen für einen bestimmten Compiler. Das Objektsystem ist über das MOP *definiert*. Eine Implementierung ist ein Compiler für Raku. Schickt sie wirklich jede Deklaration durch diese Metamethoden? Und können Sie das sehen? Das entscheidet jede Implementierung selbst. Sie können diese Metamethoden auch selbst *aufrufen*. Aus demselben Grund hängt das Ergebnis dann von der Implementierung ab. Compiler können Ihnen verschiedene Metamethoden geben. Diese Methoden können auch verschieden arbeiten. Code kann `.^add_method` und ähnliche Methoden benutzen. So ein Code läuft vielleicht nicht auf jedem Raku gleich.

Sie können Methoden hinzufügen, während das Programm läuft. Das ist ein starkes Werkzeug. Aber Sie brauchen es selten. Die meisten Programme benutzen es nie. Aber es macht das Objektsystem von Raku offen. Auch die Regeln für Klassen sind mit dem MOP geschrieben. Also können Sie diese Regeln erweitern. Für alltäglichen Code brauchen Sie einen anderen Teil des MOP. Sie haben ihn im vorigen Thema gesehen. Das sind die Metamethoden, die in Typen hineinsehen.

{% include nav.html %}
