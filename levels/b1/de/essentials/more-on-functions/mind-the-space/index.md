---
title: Achte auf den Abstand
---

{% include menu.html %}

In Raku ist die Verwendung von Funktionen meist einfach und macht keine Probleme. Aber vor einer Sache müssen wir Sie warnen.

## TL;DR

Setzen Sie kein Leerzeichen zwischen den Funktionsnamen und die Klammern mit den Argumenten. Aber nach `for` und `if` brauchen Sie ein Leerzeichen.

## Lange Geschichte

Nehmen wir eine einfache Funktion:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Beachten Sie zuerst, dass nach dem Namen der Funktion kein Leerzeichen steht. Die öffnende Klammer mit den Parametern kommt direkt nach dem Namen. Manche Code-Stile in anderen Sprachen verlangen dort vielleicht ein Leerzeichen. Raku akzeptiert das, aber das ist keine gute Praxis:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Wenn Sie die Funktion aufrufen, ist das fehlende Leerzeichen wichtig. Wenn Sie die Funktion ohne Klammern aufrufen, muss nach ihrem Namen ein Leerzeichen stehen:

```raku
f 5, 6;
```

Aber wenn Sie Klammern verwenden, darf davor kein Leerzeichen stehen. Dieser Aufruf ist korrekt:

```raku
f(5, 6);
```

Und dieser Aufruf ist falsch:

```raku
f (5, 6);
```

Solcher Code verursacht eine Ausnahme:

    Zu wenige Positionsparameter übergeben; erwartet wurden 2 Argumente, aber es wurde 1 übergeben
      sub f bei t.raku Zeile 1
      in Block <unit> bei t.raku Zeile 5

Raku versteht den Aufruf mit Leerzeichen, `f (5, 6)`, anders. Raku denkt, dass Sie der Funktion ein einziges Argument übergeben wollen, nämlich `(5, 6)`. Den Typ dieses Arguments kann man leicht prüfen. Ändern Sie einfach die Funktion so, dass sie nur ein Argument nimmt:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Wenn Sie also `f (5, 6)` aufrufen, übergeben Sie eine [Liste](/de/essentials/positionals/lists) an die Funktion. Die Liste wird als ein einziges Element übergeben.

## Wann ein Leerzeichen benötigt wird

In manchen Fällen brauchen Sie doch ein Leerzeichen. Das passiert, wenn Sie Klammern mit einem Schlüsselwort wie `if`, `for` oder `loop` verwenden. Der folgende Code ist falsch:

```raku
if(True != False) {
    say 'OK';
}
```

Die Fehlermeldung erklärt das Problem:

    ===SORRY!===
    Das Wort 'if' wird als Funktionsaufruf 'if()' interpretiert. Bitte verwenden Sie
    Leerzeichen anstelle von Klammern.
    bei /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unerwarteter Block in Infix-Position (zwei Terme hintereinander)
    bei /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Bei `if` brauchen Sie überhaupt keine Klammern. Wenn Sie sie also nicht verwenden, kann das Problem nicht auftreten. Aber in manchen Fällen brauchen Sie sie, zum Beispiel bei `loop`. Dann ist das Leerzeichen Pflicht:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

In diesem Code passiert dasselbe: Der Compiler hält `loop(...)` für einen Funktionsaufruf. Fügen Sie ein Leerzeichen ein, um das Problem zu lösen. Oder, noch besser, schreiben Sie diesen Teil des Codes mit `for` um.

## Fazit

Kurz gesagt: Um solche Probleme zu vermeiden, folgen Sie zwei Regeln. Setzen Sie kein Leerzeichen zwischen den Funktionsnamen und die Klammern mit den Argumenten. Versuchen Sie außerdem, Klammern in anderen Teilen der Sprache zu vermeiden, zum Beispiel beim Kontrollfluss.

{% include nav.html %}
