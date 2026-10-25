---
title: Benannte Parameter
---

{% include menu.html %}

Anders als [positionsbasierte Parameter](../positional-parameters) erkennt man _benannte_ Parameter an ihren Namen.

Diese Funktion hat zwei Parameter namens `$from` und `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Um diese Funktion aufzurufen, müssen Sie die Namen der Argumente schreiben:

```raku
say distance(from => 30, to => 10); # 20
```

Wenn Sie die Argumente so übergeben, als wären sie positionsbasiert, bekommen Sie einen Fehler. Zum Beispiel verursacht der Aufruf `distance(30, 10)` einen Fehler:

    Zu viele positionsbasierte Argumente übergeben; erwartete 0 Argumente, aber 2 erhalten
        in sub distance bei t.raku Zeile 1
        in Block <unit> bei t.raku Zeile 2

Das Gute ist, dass Sie benannte Argumente in beliebiger Reihenfolge angeben können. Die folgenden zwei Aufrufe sind genau gleich:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Variablen übergeben

Manchmal steht der Wert, den Sie übergeben wollen, in einer Variablen. Die Variable hat vielleicht auch denselben Namen wie der Parameter. Dann können Sie eine besondere Syntax nutzen, die Ihnen Tipparbeit spart:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Das ist ähnlich wie ein längerer Aufruf:

```raku
say distance(from => $from, to => $to); # 20
```

Auch hier spielt die Reihenfolge keine Rolle:

```raku
say distance(:$to, :$from); # 20
```

Wenn die Variable und der Parameter verschiedene Namen haben, übergeben Sie ein Paar. Verwenden Sie dafür eine dieser Möglichkeiten:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# oder:

say distance(:from($a), :to($b));
```

{% include nav.html %}
