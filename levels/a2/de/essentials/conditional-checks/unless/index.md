---
title: Verwendung von `unless`
---

{% include menu.html %}

Der [`!`-Operator](/de/essentials/booleans/operations#negation) macht aus jeder booleschen Bedingung leicht ihr Gegenteil. Aber manchmal macht dieses `!` den Ausdruck komplizierter. Dann ist er schwerer zu lesen. In solchen Fällen kann `unless` helfen.

Die Bedingung von `unless` muss `False` sein. Dann führt Raku den Block aus.

```raku
my $broken = False;

# ...Etwas kann $broken hier auf True setzen...
    
unless $broken {
    say "Keine Sorge!";
    say "Sei glücklich!";
}
```

Hier sind zwei Versionen desselben Programms. Vergleichen Sie sie:

Mit `if` und `!`:

```raku
if !$broken { . . . }
```

Mit `unless`:

```raku
unless $broken { . . . }
```

Sie haben also die Wahl. Wählen Sie in jeder Situation, was sich für Sie besser anfühlt.

Nach `unless` können Sie keinen `else`- oder `elsif`-Block setzen. Dafür müssen Sie `if` benutzen.

{% include nav.html %}
