---
title: 'Solution: Un helper privato'
translations_gpt: Italian
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Puoi trovare il codice sorgente nel file [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Output

```
16
```

## Commenti

1. L'helper `double` è dentro `stats`. Quindi puoi vederlo solo lì. Le altre parti del programma non possono chiamarlo.

1. `stats` lo usa due volte. `double(3)` vale `6`, e `double(5)` vale `10`. La loro somma è `16`.

{% include nav.html %}
