---
title: '`while` e `until` come modificatori di istruzioni'
---

{% include menu.html %}

Sia `while` che `until` possono essere usati come modificatori di istruzione, [allo stesso modo](/it/essentials/conditional-checks/modifiers) di `if` e `unless`.

Guarda un esempio che imita la divisione modulo, cioè il calcolo del resto:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Qui, `-=` è un operatore che fa insieme la sottrazione e l'assegnazione. In questo caso, `$x -= 3` è uguale a `$x = $x - 3`.

Il modificatore `while` ripete l'istruzione `$x -= 3` finché la condizione `$x > 2` rimane `True`. Non appena la condizione diventa `False`, il ciclo si interrompe.

Nota che se la condizione è `False` fin dall'inizio, l'istruzione non viene eseguita affatto.

Lo stesso programma può essere scritto con `until`. Per farlo, devi invertire la condizione:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
