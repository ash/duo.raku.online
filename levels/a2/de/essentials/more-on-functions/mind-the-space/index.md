---
title: Achte auf den Abstand
---

{% include menu.html %}

Funktionen in Raku sind meist leicht zu verwenden. Normalerweise machen sie keine Probleme. Aber passen Sie bei einer Sache auf.

## TL;DR

Schreiben Sie kein Leerzeichen zwischen den Funktionsnamen und die Klammern. In den Klammern stehen die Argumente. Aber nach `for` und `if` setzen Sie ein Leerzeichen.

## Lange Geschichte

Hier ist eine einfache Funktion:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Sehen Sie sich zuerst den Namen der Funktion an. Die öffnende Klammer kommt direkt danach, ohne Leerzeichen. Die Parameter stehen in diesen Klammern. Manche Code-Stile in anderen Sprachen brauchen dort ein Leerzeichen. Raku akzeptiert das auch. Aber das ist kein guter Weg, Code zu schreiben:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Bei einem Funktionsaufruf ist das fehlende Leerzeichen wichtig. Manchmal rufen Sie eine Funktion ohne Klammern auf. Dann müssen Sie ein Leerzeichen nach dem Namen der Funktion setzen:

```raku
f 5, 6;
```

Aber mit Klammern darf davor kein Leerzeichen stehen. Dieser Aufruf ist richtig:

```raku
f(5, 6);
```

Und dieser Aufruf ist falsch:

```raku
f (5, 6);
```

Dieser Code verursacht eine Ausnahme:

    Zu wenige Positionsparameter übergeben; erwartet wurden 2 Argumente, aber es wurde 1 übergeben
      sub f bei t.raku Zeile 1
      in Block <unit> bei t.raku Zeile 5

Sehen Sie sich den Aufruf mit Leerzeichen an: `f (5, 6)`. Raku denkt, dass Sie der Funktion ein Argument übergeben. Dieses Argument ist `(5, 6)`. Sie können den Typ dieses Arguments leicht prüfen. Ändern Sie die Funktion. Sie soll nur noch ein Argument nehmen:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Der Aufruf `f (5, 6)` übergibt also eine [Liste](/de/essentials/positionals/lists) an die Funktion. Die ganze Liste ist ein Argument.

## Wann Sie ein Leerzeichen brauchen

Manchmal brauchen Sie ein Leerzeichen. Das passiert bei Klammern nach einem Schlüsselwort. Das Schlüsselwort kann zum Beispiel `if`, `for` oder `loop` sein. Dieser Code ist falsch:

```raku
if(True != False) {
    say 'OK';
}
```

Die Fehlermeldung sagt Ihnen, was falsch ist:

    ===SORRY!===
    Das Wort 'if' wird als Funktionsaufruf 'if()' interpretiert. Bitte verwenden Sie
    Leerzeichen anstelle von Klammern.
    bei /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unerwarteter Block in Infix-Position (zwei Terme hintereinander)
    bei /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Bei `if` brauchen Sie überhaupt keine Klammern. Ohne Klammern kann dieses Problem nicht passieren. Aber manchmal brauchen Sie Klammern, zum Beispiel bei `loop`. Dann müssen Sie ein Leerzeichen setzen:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

In diesem Code passiert dasselbe. Der Compiler denkt, dass `loop(...)` ein Funktionsaufruf ist. Setzen Sie ein Leerzeichen, um das Problem zu lösen. Oder, besser, schreiben Sie diesen Code mit `for`.

## Fazit

Hier ist also das Wichtigste. Setzen Sie kein Leerzeichen zwischen einen Funktionsnamen und seine Klammern. Dann vermeiden Sie solche Probleme. Versuchen Sie auch, an anderen Stellen möglichst keine Klammern zu verwenden. Zum Beispiel brauchen Sie sie bei `if` und `for` nicht.

{% include nav.html %}
