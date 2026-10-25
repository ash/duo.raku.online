---
title: Benannte Parameter
---

{% include menu.html %}

_Benannte_ Parameter sind anders als [positionsbasierte Parameter](../positional-parameters). Bei einem Aufruf schreiben Sie ihre Namen.

Diese Funktion nimmt zwei Parameter. Ihre Namen sind `$from` und `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Um die Funktion aufzurufen, schreiben Sie den Namen jedes Arguments:

```raku
say distance(from => 30, to => 10); # 20
```

Übergeben Sie die Argumente nicht wie positionsbasierte Argumente. Das ist ein Fehler. Zum Beispiel gibt der Aufruf `distance(30, 10)` einen Fehler:

    Zu viele positionsbasierte Argumente übergeben; erwartete 0 Argumente, aber 2 erhalten
        in sub distance bei t.raku Zeile 1
        in Block <unit> bei t.raku Zeile 2

Und jetzt das Gute daran. Sie können benannte Argumente in beliebiger Reihenfolge schreiben. Diese zwei Aufrufe tun genau dasselbe:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Variablen übergeben

Manchmal wollen Sie einen Wert aus einer Variablen übergeben. Die Variable hat denselben Namen wie der Parameter. Dann hilft eine besondere Syntax. Mit ihr tippen Sie weniger:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Dieser Aufruf tut dasselbe wie ein längerer:

```raku
say distance(from => $from, to => $to); # 20
```

Wieder spielt die Reihenfolge keine Rolle:

```raku
say distance(:$to, :$from); # 20
```

Manchmal haben die Variable und der Parameter verschiedene Namen. Dann übergeben Sie ein Paar auf eine dieser Arten:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# oder:

say distance(:from($a), :to($b));
```

{% include nav.html %}
