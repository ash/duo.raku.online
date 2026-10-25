---
title: '`while` e `until` come modificatori di istruzioni'
---

{% include menu.html %}

Puoi scrivere `while` e `until` anche dopo un'istruzione. Questa forma si chiama modificatore di istruzione. Funziona [come](/it/essentials/conditional-checks/modifiers) `if` e `unless` dopo un'istruzione.

Ecco un esempio. Trova il resto di una divisione:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Qui `-=` è un operatore. Sottrae e assegna allo stesso tempo. Quindi `$x -= 3` significa la stessa cosa di `$x = $x - 3`.

Il modificatore `while` ripete l'istruzione `$x -= 3`. La ripete finché la condizione `$x > 2` è `True`. Quando la condizione diventa `False`, il ciclo si ferma.

Se la condizione è `False` all'inizio, il programma non esegue affatto l'istruzione.

Puoi scrivere lo stesso programma con `until`. Per questo, devi usare la condizione opposta:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
