---
title: Einem Objekt eine Rolle hinzufügen
translations_gpt:
---

{% include menu.html %}

Sie müssen eine Rolle nicht in eine Klasse einbauen. Sie können eine Rolle auch einem Objekt geben, das es schon gibt. Dafür nehmen Sie den Operator `but`. Er mischt die Rolle in ein einzelnes Objekt. Das passiert, während das Programm läuft. Dann gibt `but` ein neues Objekt mit der Rolle zurück:

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

Nur `$loud` hat die Rolle bekommen. Die Klasse `Greeter` und alle anderen `Greeter`-Objekte bleiben gleich. Also grüßt `$quiet` weiter auf die normale Weise. Manchmal haben die Rolle und die Klasse Methoden mit demselben Namen. Dann gewinnt die Version aus der Rolle. Und `callsame` ruft die andere Methode auf, die die Rolle überschreibt. Das ist hier das ursprüngliche `greet` aus `Greeter`. Dann ändert die Methode sein Ergebnis in Großbuchstaben.

Ein Objekt kann so eine Rolle bekommen. Dann erfüllt es diese Rolle:

```raku
say $quiet ~~ Loud; # False
say $loud  ~~ Loud; # True
```

`but` ändert das ursprüngliche Objekt nicht. Er gibt Ihnen ein neues Objekt. Vielleicht wollen Sie das Objekt selbst ändern. Dann nehmen Sie stattdessen den Operator `does`:

```raku
my $speaker = Greeter.new;
$speaker does Loud;
say $speaker.greet; # HELLO
```

Sie können Rollen in einzelne Objekte mischen. So entscheiden Sie für jedes Objekt, welches zusätzliche Verhalten es bekommt. Sie brauchen keine eigene Klasse für jede Kombination.

{% include nav.html %}
