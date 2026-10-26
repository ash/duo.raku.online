---
title: Introspektion von Containern
---

{% include menu.html %}

_Introspektion_ bedeutet, einen Wert oder einen Container nach sich selbst zu fragen. Du kannst nach seinem Typ fragen, nach dem Container dahinter oder danach, wie er innen funktioniert. Du hast schon ein Introspektionswerkzeug verwendet, `.^name`, mit dem du den Typ eines Wertes ausgibst.

Raku hat eine kleine Familie solcher Werkzeuge, und ihre Namen sind in Großbuchstaben: `WHAT`, `VAR`, `WHO` und `HOW`. Sie werden manchmal _Pseudo-Methoden_ genannt. Das liegt daran, dass der Compiler ihnen eine besondere Bedeutung gibt. Er behandelt sie nicht als gewöhnliche Methoden. Dieser Abschnitt schaut sich jedes davon an.

Zur Erinnerung ist hier noch einmal `.^name`. Dieser Container hat keinen Typ-Constraint, und wir speichern verschiedene Werte darin. `.^name` zeigt, wie sich sein Typ ändert:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Am Anfang ist der Container `Any`. Dann zeigt er den Typ des Wertes, den er gerade enthält.

{% include nav.html %}
