---
title: Commenti su più linee
---

{% include menu.html %}

A volte un commento è più lungo di una riga. Allora hai due scelte. Puoi scrivere alcuni commenti su una sola riga. Oppure puoi scrivere un solo commento multi-linea.

Un commento multi-linea inizia con due caratteri: ``#` ``. Poi viene una coppia di parentesi: `( )`, `{ }`, `[ ]` o `< >`. Puoi anche ripeterle: `(( ))`, `[[[ ]]]` e così via.

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
