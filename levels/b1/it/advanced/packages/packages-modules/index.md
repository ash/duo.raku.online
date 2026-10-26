---
title: Pacchetti e moduli
translations_gpt: true
---

{% include menu.html %}

La parola chiave `package` crea un namespace. Tutto ciò che dichiari dentro con `our` diventa parte di quel namespace. Dall'esterno, puoi raggiungere questi nomi attraverso il nome del package e il separatore `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Raggiungi la variabile come `$Maths::pi`. Ha il sigillo, poi il nome del package, poi il nome della variabile. Una subroutine viene chiamata come `Maths::double(...)`.

Sia `package` sia `module` creano un namespace, ma sono diversi in quello che fanno in più. Un `module` è la scelta abituale per il codice riutilizzabile. Un semplice `package` è solo il namespace, senza niente in più. Anche una `class`, che incontrerai nella [prossima parte](/it/oop), crea un namespace. In più, aggiunge tutto quello che serve per la programmazione orientata agli oggetti.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Quindi `module` ti dà lo stesso namespace che dà un semplice `package`. La scelta tra i due dipende soprattutto da quello che vuoi fare. Usa `module` per le librerie e `package` per un namespace semplice. Più avanti, quando arriverai agli oggetti, usa `class` per i tipi.

{% include nav.html %}
