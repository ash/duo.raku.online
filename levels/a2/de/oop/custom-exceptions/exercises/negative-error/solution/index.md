---
title: 'Lösung: Ein Fehler bei negativen Zahlen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Negative is Exception {
    has $.n;

    method message {
        "$.n is negative";
    }
}

sub check($n) {
    Negative.new(n => $n).throw if $n < 0;
    return $n;
}

{
    say check(-5);

    CATCH {
        when Negative {
            say .message;
        }
    }
}

Negative.new(n => -10).throw;
```

🦋 Du findest den Quellcode in der Datei [negative-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/negative-error.raku).

## Ausgabe

```
-5 is negative
-10 is negative
  in block <unit> at negative-error.raku line 24
```

## Kommentare

1. Mit `Negative is Exception` können Sie diese Klasse werfen. Ihre Methode `message` baut den Text aus dem Attribut `n` zusammen.

1. `check` prüft seine Eingabe. Für eine negative Zahl wirft es die eigene Ausnahme. Die Ausnahme geht aus `check` hinaus. Sie geht zum `CATCH` in dem Block, der `check` aufgerufen hat. Dort erkennt `when Negative` sie an ihrem Typ. Dann gibt das `CATCH` die Meldung aus. Das ist eine sehr häufige, echte Verwendung eigener Ausnahmen. Ein Programm prüft seine Eingabe. Für einen schlechten Wert wirft es eine Ausnahme mit eigenem Typ.

1. Warum steht ein `{ … }` um den Aufruf? Ein `CATCH`-Phaser behandelt nur die Ausnahmen aus **seinem eigenen Block**. Das ist der Block, in dem das `CATCH` steht. Hier enthält der Block den Aufruf `check(-5)` zusammen mit seinem `CATCH`. Der Aufruf kann fehlschlagen, und das `CATCH` ist dafür da. Also fängt das `CATCH` die Ausnahme genau hier. Dann läuft das Programm direkt nach dem Block weiter. Was ist, wenn es keinen Block gibt? Dann gilt das `CATCH` für das ganze Programm. Es fängt die Ausnahme. Aber dann endet das Programm einfach. Es gibt keine gute Stelle zum Weitermachen.

1. Die letzte Zeile, `Negative.new(n => -10).throw`, zeigt den anderen Fall. Diese Zeile steht **außerhalb** des Blocks. Also fängt nichts die Ausnahme. Die Ausnahme geht ganz nach oben. Dann stirbt das Programm, das heißt, es stoppt mit einem Fehler. Es gibt die Meldung auf der Standardfehlerausgabe aus. Dort gibt es auch eine Rückverfolgung aus. Eine Rückverfolgung zeigt, wo im Code der Fehler passiert ist. Dann endet das Programm mit einem anderen Exit-Code als `0`. Das passiert mit jeder Ausnahme, die Sie nicht fangen. Und darum braucht der erste Wurf ein `CATCH`. Ohne das `CATCH` kann das Programm nicht weitermachen.

{% include nav.html %}
