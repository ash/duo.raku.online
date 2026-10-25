---
title: '`while` e `until` come modificatori di istruzioni'
---

{% include menu.html %}

Puoi anche mettere `while` o `until` dopo un'istruzione. Lo chiamiamo modificatore di istruzione. Lo conosci già [da `if` e `unless`](/it/essentials/conditional-checks/modifiers).

Ecco un esempio. Trova il resto, cioè quello che rimane dopo la divisione:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Qui `-=` è un operatore. Fa due cose. Toglie un numero. Salva anche il risultato nella variabile. Quindi `$x -= 3` è uguale a `$x = $x - 3`.

Il modificatore `while` ripete l'istruzione `$x -= 3`. La ripete finché `$x > 2` è `True`. Quando `$x > 2` è `False`, il ciclo si ferma.

Se la condizione è `False` all'inizio, l'istruzione non parte mai.

Puoi scrivere lo stesso programma con `until`. Allora ti serve la condizione opposta:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
