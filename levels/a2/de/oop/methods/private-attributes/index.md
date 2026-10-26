---
title: Private Attribute
translations_gpt:
---

{% include menu.html %}

Im [Abschnitt über Attribute](/de/oop/attributes) hatte jedes Attribut `$.` im Namen. `$.` erstellt einen öffentlichen Accessor. Alle außerhalb des Objekts können ihn benutzen. Aber Sie können stattdessen auch `$!` schreiben. Dann ist das Attribut _privat_. Es hat keinen Accessor. Code außerhalb des Objekts kann es nicht sehen. Nur die Methoden der Klasse können es benutzen. Dort schreiben Sie es als `$!name`.

```raku
class Safe {
    has $!code = 4321;

    method unlocks($attempt) {
        return $attempt == $!code;
    }
}

my $safe = Safe.new;
say $safe.unlocks(4321); # True
say $safe.unlocks(1111); # False
```

Der geheime `$!code` ist im Objekt. Aber niemand außerhalb kann ihn sehen. Es gibt keinen Accessor `.code`. Sie können den Code nur über die Methode `unlocks` benutzen. Die Klasse gibt Ihnen diese Methode mit Absicht. Das Lesen von `$safe.code` oder `$safe!code` funktioniert einfach nicht.

Private Attribute sind gut für Details im Inneren des Objekts. Der Rest des Programms soll sie nicht direkt anfassen.

{% include nav.html %}
