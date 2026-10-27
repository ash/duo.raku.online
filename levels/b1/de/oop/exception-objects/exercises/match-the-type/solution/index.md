---
title: 'Lösung: Treffen Sie den Typ'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. In Raku schlägt `1 / 0` nicht sofort fehl. Stattdessen ergibt es ein träges `Failure`, das wartet, bis es verwendet wird. Die Ausnahme wird erst geworfen, wenn wir den Wert *verwenden*. Hier passiert das, wenn wir versuchen, ihn mit `say` auszugeben.

1. Die geworfene Ausnahme hat den eingebauten Typ `X::Numeric::DivideByZero`. Der Zweig `when X::Numeric::DivideByZero` passt genau auf diesen Typ. Hier prüfen Sie auf einen bestimmten Typ, statt alles mit `default` zu fangen. So können Sie verschiedene Fehler verschieden behandeln.

{% include nav.html %}
