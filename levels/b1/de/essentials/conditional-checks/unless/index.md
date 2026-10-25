---
title: Verwendung von `unless`
---

{% include menu.html %}

Mit dem [`!`-Operator](/de/essentials/booleans/operations#negation) können Sie jede boolesche Bedingung leicht in ihr Gegenteil verwandeln. Aber manchmal macht das zusätzliche `!` den Ausdruck umständlicher und schwerer lesbar. In solchen Fällen kann `unless` Ihr Freund sein.

Raku führt den `unless`-Block aus, wenn seine Bedingung `False` ist.

```raku
my $broken = False;

# ...Etwas kann $broken hier auf True setzen...
    
unless $broken {
    say "Keine Sorge!";
    say "Sei glücklich!";
}
```

Vergleichen Sie zwei Versionen desselben Programms:

Mit `if` und Negation:

```raku
if !$broken { . . . }
```

Mit `unless`:

```raku
unless $broken { . . . }
```

Sie haben beide Möglichkeiten, also können Sie immer wählen, was sich in jeder Situation besser anfühlt.

Beachten Sie, dass nach `unless` kein `else`- oder `elsif`-Block stehen kann. Wenn Sie einen brauchen, geht das nur mit `if`.

{% include nav.html %}
