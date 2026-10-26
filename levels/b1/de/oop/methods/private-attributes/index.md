---
title: Private Attribute
translations_gpt:
---

{% include menu.html %}

Im [Abschnitt über Attribute](/de/oop/attributes) haben wir jedes Attribut mit `$.` deklariert. Das erzeugt einen öffentlichen Accessor. Wenn Sie ein Attribut stattdessen mit `$!` deklarieren, ist es _privat_. Es hat keinen Accessor, und Sie können es von außerhalb des Objekts nicht sehen. Nur die eigenen Methoden der Klasse können es erreichen. Dort schreiben Sie es als `$!name`.

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

Der geheime `$!code` wird im Objekt gespeichert, aber nie nach außen gezeigt. Es gibt keinen Accessor `.code`. Sie können also nur über die Methode `unlocks` damit arbeiten. Die Klasse bietet diese Methode bewusst an. Wenn Sie versuchen, `$safe.code` oder `$safe!code` zu lesen, schlägt das einfach fehl.

Private Attribute sind nützlich für interne Details. Der Rest des Programms soll nicht direkt mit diesen Details arbeiten.

{% include nav.html %}
