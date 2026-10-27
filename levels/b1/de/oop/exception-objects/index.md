---
title: Ausnahmeobjekte
translations_gpt:
---

{% include menu.html %}

Eine Ausnahme ist ein Objekt, genau wie jedes andere Objekt in Raku. Wenn Sie `die 'something failed'` schreiben, packt Raku Ihre Meldung in ein Ausnahmeobjekt. Dieses Objekt hat den Typ `X::AdHoc`.

Innerhalb eines `CATCH` können Sie dieses Objekt untersuchen. Seinen Typ bekommen Sie mit `.^name` und seinen Text mit `.message`:

```raku
{
    die 'something failed';

    CATCH {
        default {
            say .^name;   # X::AdHoc
            say .message; # something failed
        }
    }
}
```

Wenn Sie den Typ kennen, können Sie verschiedene Fehler verschieden behandeln. Eingebaute Ausnahmen in Raku haben eigene Typen, und ihre Namen beginnen mit `X::`. Mit `when` können Sie auf diese Typen prüfen. Das funktioniert genau wie das Prüfen von Werten in einem `given`/`when`-Block:

```raku
{
    die 'something failed';

    CATCH {
        when X::AdHoc {
            say 'an ad-hoc error: ' ~ .message;
        }
        default {
            say 'some other error';
        }
    }
}
```

Das gibt `an ad-hoc error: something failed` aus. Das liegt daran, dass die Ausnahme auf den Typ `X::AdHoc` gepasst hat. Die Prüfung auf den Typ ist der grundlegende Weg, bestimmte Fehler zu behandeln. Der Abschnitt über [eigene Ausnahmen](/de/oop/custom-exceptions) baut auf dieser Idee auf.

{% include nav.html %}
