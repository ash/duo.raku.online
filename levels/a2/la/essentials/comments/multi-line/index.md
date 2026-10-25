---
title: Commentarii multi-lineae
---

{% include menu.html %}

Interdum commentarius longior est quam una linea. Tum duas optiones habes. Paucos commentarios unius lineae scribere potes. Aut unum commentarium multi-lineae scribere potes.

Commentarius multi-lineae a duobus characteribus incipit: ``#` ``. Deinde venit par uncorum: `( )`, `{ }`, `[ ]` aut `< >`. Eos etiam repetere potes: `(( ))`, `[[[ ]]]` et cetera.

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
