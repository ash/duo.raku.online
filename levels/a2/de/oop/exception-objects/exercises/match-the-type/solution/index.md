---
title: 'Lösung: Treffen Sie den Typ'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
{
    my $x = 1 / 0;
    say $x;

    CATCH {
        when X::Numeric::DivideByZero {
            say 'cannot divide by zero';
        }
    }
}
```

🦋 Du findest den Quellcode in der Datei [match-the-type.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/match-the-type.raku).

## Ausgabe

```
cannot divide by zero
```

## Kommentare

1. In Raku stürzt `1 / 0` nicht sofort ab. Es ergibt ein träges `Failure`. Ein `Failure` ist ein Wert mit einem Fehler darin. Es wartet, bis Sie es benutzen. Raku wirft die Ausnahme erst, wenn wir den Wert *benutzen*. Hier versuchen wir, ihn mit `say` auszugeben.

1. Die geworfene Ausnahme hat den eingebauten Typ `X::Numeric::DivideByZero`. Der Zweig `when X::Numeric::DivideByZero` passt genau auf diesen Typ. Hier prüfen Sie auf einen bestimmten Typ. Sie fangen nicht alles mit `default`. So können Sie jede Art von Fehler auf ihre eigene Weise behandeln.

{% include nav.html %}
