---
title: 'Lösung: Zu groß'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Ausgabe

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Kommentare

1. `TooBig is Exception` macht aus der Klasse eine Ausnahme. Sie können sie werfen. Sie enthält zwei Werte, `value` und `limit`. Ihre Methode `message` setzt beide in den Text ein.

1. `.throw` wirft die Ausnahme. `when TooBig` erkennt sie an ihrem Typ. Der Code in `when TooBig` ist die Behandlung. Die Behandlung gibt nicht nur die Meldung aus. Sie liest auch das Attribut `limit` aus dem gefangenen Objekt. Damit gibt die Behandlung einen nützlichen Hinweis. Darum ist eine eigene Ausnahme besser als eine einfache Zeichenkette. Die Behandlung bekommt Daten in einer klaren Form. Sie kann mit diesen Daten arbeiten.

1. Das Programm wirft die Ausnahme **nur**, wenn `$value > $limit` gilt. Für `30` gibt es keine Ausnahme. Der Rumpf der Schleife läuft bis zum Ende. Sein `say` gibt aus, dass der Wert innerhalb der Grenze liegt. Für `99` und `60` passiert das `throw`. Also überspringt das Programm dieses `say`. Stattdessen behandelt das `CATCH` die Ausnahme. Hier steht das `CATCH` direkt im Rumpf der `for`-Schleife. Also beendet eine gefangene Ausnahme nur die aktuelle Runde. Dann geht die Schleife einfach zum nächsten Wert weiter.

{% include nav.html %}
