---
title: Einem Objekt eine Rolle hinzufügen
translations_gpt:
---

{% include menu.html %}

Eine Rolle muss nicht in eine Klasse eingebaut sein. Sie können eine Rolle auch einem Objekt geben, das schon existiert, und zwar mit dem Operator `but`. Er mischt die Rolle zur Laufzeit in ein einzelnes Objekt. Dann gibt er ein neues Objekt zurück, das die Rolle hat:

```raku
role Loud {
    method greet {
        callsame().uc;
    }
}

class Greeter {
    method greet {
        'Hello';
    }
}

my $quiet = Greeter.new;
my $loud  = Greeter.new but Loud;

say $quiet.greet; # Hello
say $loud.greet;  # HELLO
```

Nur `$loud` hat die Rolle bekommen. Die Klasse `Greeter` und alle anderen `Greeter`-Objekte bleiben gleich. Also grüßt `$quiet` weiter auf die normale Weise. Manchmal definieren die Rolle und die Klasse beide eine Methode mit demselben Namen. In diesem Fall gewinnt die Version der Rolle. Und `callsame` ruft die Methode auf, die sie überschrieben hat. Das ist hier das ursprüngliche `greet` aus `Greeter`. Sein Ergebnis wird dann in Großbuchstaben umgewandelt.

Ein Objekt mit einer eingemischten Rolle gilt als Träger dieser Rolle:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` lässt das ursprüngliche Objekt, wie es war, und gibt Ihnen ein neues. Wenn Sie ein vorhandenes Objekt selbst ändern wollen, nehmen Sie stattdessen den Operator `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Wenn Sie Rollen in einzelne Objekte einmischen, entscheiden Sie, welches zusätzliche Verhalten jedes Objekt bekommt. Sie müssen nicht für jede Kombination eine eigene Klasse definieren.

{% include nav.html %}
