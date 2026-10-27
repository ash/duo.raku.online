---
title: 'Lösung: Ein Fehler bei negativen Zahlen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `Negative is Exception` macht es möglich, die Klasse zu werfen. Ihre Methode `message` baut den Text aus dem Attribut `n` zusammen.

1. `check` prüft seine Eingabe und wirft für eine negative Zahl die eigene Ausnahme. Die Ausnahme wandert aus `check` hinaus zum `CATCH` im aufrufenden Block. Dort erkennt `when Negative` sie an ihrem Typ und gibt die Meldung aus. Das ist eine sehr häufige, echte Verwendung eigener Ausnahmen. Code prüft seine Eingabe und meldet schlechte Werte mit einer Ausnahme von eigenem Typ.

1. Warum steht ein `{ … }` um den Aufruf? Ein `CATCH`-Phaser behandelt nur die Ausnahmen, die in **dem Block, der ihn enthält**, geworfen werden. Der Block bringt das riskante `check(-5)` mit dem `CATCH` zusammen, das es schützt. Also wird die Ausnahme genau hier gefangen, und das Programm läuft direkt nach dem Block weiter. Ohne den Block würde das `CATCH` stattdessen das ganze Programm schützen. Es würde die Ausnahme fangen, aber dann würde das Programm einfach enden. Es gäbe keine natürliche Stelle zum Weitermachen.

1. Das letzte `Negative.new(n => -10).throw` zeigt die andere Seite. Es steht **außerhalb** des Blocks, also fängt nichts die Ausnahme. Die Ausnahme geht ganz nach oben, und das Programm stirbt. Es gibt die Meldung und eine Rückverfolgung auf der Standardfehlerausgabe aus. Dann endet es mit einem Status ungleich null. Das passiert mit jeder Ausnahme, die Sie nicht fangen. Und genau darum brauchte der erste Wurf ein `CATCH`, um zu überleben.

{% include nav.html %}
