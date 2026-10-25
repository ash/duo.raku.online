---
title: '`while` e `until` come modificatori di istruzioni'
---

{% include menu.html %}

Puoi usare `while` e `until` anche come modificatori di istruzione, cioè dopo un'istruzione. Funziona [allo stesso modo](/it/essentials/conditional-checks/modifiers) che con `if` e `unless`.

Ecco un esempio che funziona come la divisione modulo, cioè trova il resto:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Qui `-=` è un operatore che sottrae e assegna in un solo passo. Quindi `$x -= 3` significa la stessa cosa di `$x = $x - 3`.

Il modificatore `while` ripete `$x -= 3` finché la condizione `$x > 2` è `True`. Quando diventa `False`, il ciclo si ferma.

Nota che se la condizione è `False` fin dall'inizio, l'istruzione non viene mai eseguita.

Lo stesso programma può usare `until`, ma allora la condizione deve essere invertita:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
