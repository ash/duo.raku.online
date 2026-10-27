---
title: Ausnahmeobjekte
translations_gpt:
---

{% include menu.html %}

Eine Ausnahme beschreibt einen Fehler im Programm. In Raku ist sie ein Objekt, wie jedes andere Objekt. Sie schreiben `die 'something failed'`. Dann packt Raku Ihre Meldung in ein Ausnahmeobjekt. Der Typ dieses Objekts ist `X::AdHoc`.

Ein `CATCH`-Block fängt die Ausnahme. Darin können Sie sich dieses Objekt ansehen. `.^name` gibt Ihnen seinen Typ. `.message` gibt Ihnen seinen Text:

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

Der Typ ist nützlich. Mit ihm können Sie jeden Fehler auf seine eigene Weise behandeln. Jede eingebaute Ausnahme in Raku hat ihren eigenen Typ. Die Namen dieser Typen beginnen mit `X::`. Mit `when` können Sie auf diese Typen prüfen. Dasselbe haben Sie mit Werten in einem `given`/`when`-Block gemacht:

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

Das gibt `an ad-hoc error: something failed` aus. Denn die Ausnahme passt auf den Typ `X::AdHoc`. Um eine bestimmte Art von Fehler zu behandeln, prüfen Sie auf ihren Typ. Das ist die Grundidee. Der Abschnitt über [eigene Ausnahmen](/de/oop/custom-exceptions) baut darauf auf.

{% include nav.html %}
