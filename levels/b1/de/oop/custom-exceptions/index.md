---
title: Eigene Ausnahmen
translations_gpt:
---

{% include menu.html %}

Raku hat eingebaute `X::`-Ausnahmen, aber Sie können auch eigene erstellen. Eine eigene Ausnahme ist eine Klasse, die von der eingebauten Klasse `Exception` erbt. Sie hat außerdem eine Methode `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` ist eine normale Klasse, also kann sie Attribute wie `value` haben. Aber weil sie `is Exception` ist, können Sie sie werfen. Dazu erzeugen Sie ein Objekt und rufen darauf `.throw` auf:

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

Innerhalb des `CATCH` trifft `when TooBig` zu, weil das geworfene Objekt diesen Typ hat. Eine eigene Ausnahme trägt alle Daten mit sich, die Sie ihr geben, hier den `value`. Also kann die Behandlung eine genaue Meldung bauen oder auf besondere Weise reagieren. Das ist viel nützlicher als eine einfache Zeichenkette, die man an `die` übergibt.

Diese Seite bringt alles aus diesem Teil zusammen. Eine eigene Ausnahme ist eine _Klasse_ mit Attributen und einer Methode. Sie nimmt auch am Ausnahmesystem von Raku teil. So ist sie bereit, genau zu melden, was schiefgegangen ist.

{% include nav.html %}
