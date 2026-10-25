---
title: Commentarii multi-lineae
---

{% include menu.html %}

Si commentarius tuus longior est quam una linea, eligere potes. Paucos commentarios unius lineae aut unum commentarium multi-lineae scribere potes.

Commentarii multi-lineae a duobus characteribus incipiunt: ``#` ``. Post eos venit par characterum, unus aperiens et alter claudens: `( )`, `{ }`, `[ ]` aut `< >`. Eos etiam repetere potes, exempli gratia, `(( ))`, `[[[ ]]]` et cetera.

Exempli gratia:

```raku
my $name;
#`( Rogaturi sumus utentem
ut nomen suum primum inserat et deinde
input in variabili servet. )

$name = prompt 'Quod est nomen tuum? ';
#`{ Programma nunc exspectat
until utens nomen inserat
et premet Enter. }

say $name; #`( Et nunc possumus illud imprimere )
```

{% include nav.html %}
