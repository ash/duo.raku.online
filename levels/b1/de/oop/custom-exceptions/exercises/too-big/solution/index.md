---
title: 'Lösung: Zu groß'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `TooBig is Exception` macht aus der Klasse eine Ausnahme, die Sie werfen können. Sie trägt zwei Werte mit sich, `value` und `limit`. Ihre Methode `message` setzt beide in den Text ein, den sie meldet.

1. `.throw` löst die Ausnahme aus, und `when TooBig` erkennt sie an ihrem Typ. Die Behandlung tut mehr, als die Meldung auszugeben. Sie liest das Attribut `limit` direkt aus dem gefangenen Objekt, um einen hilfreichen Hinweis zu geben. Darum ist eine eigene Ausnahme besser als eine einfache Zeichenkette. Die Behandlung bekommt Daten mit einer klaren Struktur, mit denen sie arbeiten kann.

1. Die Ausnahme wird **nur** geworfen, wenn `$value > $limit` gilt. Für `30` gibt es keine Ausnahme, und der Schleifenrumpf läuft bis zu seinem `say`. Das `say` gibt aus, dass der Wert innerhalb der Grenze liegt. Für `99` und `60` passiert das `throw`, also wird dieses `say` übersprungen. Stattdessen behandelt das `CATCH` die Ausnahme. Der Rumpf der `for`-Schleife ist selbst der Block, den das `CATCH` schützt. Also beendet eine gefangene Ausnahme nur die aktuelle Runde. Dann geht die Schleife einfach zum nächsten Wert weiter.

{% include nav.html %}
