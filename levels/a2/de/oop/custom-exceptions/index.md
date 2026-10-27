---
title: Eigene Ausnahmen
translations_gpt:
---

{% include menu.html %}

Raku hat eingebaute Ausnahmen. Ihre Namen beginnen mit `X::`. Sie können auch selbst Ausnahmen erstellen. Wir nennen sie eigene Ausnahmen. Eine eigene Ausnahme ist eine Klasse. Sie erbt von der eingebauten Klasse `Exception`. Also ist sie eine Art `Exception`. Sie hat auch eine Methode `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` ist eine normale Klasse. Sie kann Attribute haben, zum Beispiel `value`. Aber sie ist `is Exception`. Also können Sie sie werfen, wie einen Fehler von `die`. Erzeugen Sie dafür ein Objekt der Klasse. Dann rufen Sie `.throw` für dieses Objekt auf:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

Das Programm gibt aus:

```
Value 600 is too big
```

Innerhalb des `CATCH` trifft `when TooBig` zu. Denn das geworfene Objekt hat den Typ `TooBig`. Eine eigene Ausnahme enthält alle Daten, die Sie ihr geben. Hier sind diese Daten der `value`. Der Code, der die Ausnahme behandelt, ist die Behandlung. Die Behandlung kann diese Daten nutzen. Sie kann eine genaue Meldung bauen. Oder sie kann auf eine besondere Weise reagieren. Das ist viel nützlicher als eine einfache Zeichenkette für `die`.

Hier kommt alles aus diesem Teil des Kurses zusammen. Eine eigene Ausnahme ist eine _Klasse_. Sie hat Attribute und eine Methode. Sie arbeitet auch mit den Werkzeugen von Raku für Ausnahmen zusammen. Sie können sie werfen und fangen. So kann sie genau sagen, was schiefgegangen ist.

{% include nav.html %}
