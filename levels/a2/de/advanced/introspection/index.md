---
title: Introspektion von Containern
---

{% include menu.html %}

_Introspektion_ bedeutet, dass du einen Wert oder einen Container nach sich selbst fragst. Du kannst nach seinem Typ fragen. Du kannst nach dem Container dahinter fragen. Du kannst auch fragen, wie er im Inneren von Raku funktioniert. Du kennst schon ein Werkzeug für Introspektion, `.^name`. Damit gibst du den Typ eines Wertes aus.

Raku hat eine kleine Gruppe solcher Werkzeuge. Ihre Namen sind in Großbuchstaben: `WHAT`, `VAR`, `WHO` und `HOW`. Man nennt sie manchmal _Pseudo-Methoden_. Sie sehen wie Methoden aus. Aber sie sind keine normalen Methoden. Der Compiler gibt ihnen eine besondere Bedeutung. Dieser Abschnitt schaut sich jedes davon an.

Hier ist eine Erinnerung an `.^name`. Der Container in diesem Code hat keinen festen Typ. Wir speichern verschiedene Werte darin. `.^name` zeigt, wie sich der Typ ändert:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Zuerst ist der Container `Any`. Danach zeigt er den Typ seines aktuellen Wertes.

{% include nav.html %}
