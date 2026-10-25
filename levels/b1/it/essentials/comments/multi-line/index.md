---
title: Commenti su più linee
---

{% include menu.html %}

Se il tuo commento è più lungo di una riga, puoi scegliere. Puoi scrivere alcuni commenti su una singola riga o un solo commento multi-linea.

I commenti multi-linea iniziano con due caratteri: ``#` ``. Dopo di loro viene una coppia di caratteri di apertura e di chiusura: `( )`, `{ }`, `[ ]` o `< >`. Puoi anche ripeterli, per esempio, `(( ))`, `[[[ ]]]` e così via.

Per esempio:

```raku
my $name;
#`( Chiederemo all'utente
di inserire il proprio nome prima e poi
salveremo l'input in una variabile. )

$name = prompt 'Qual è il tuo nome? ';
#`{ Il programma ora aspetta
fino a quando l'utente inserisce il nome
e preme Invio. }

say $name; #`( E ora possiamo stamparlo )
```

{% include nav.html %}
