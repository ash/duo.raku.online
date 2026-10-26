---
title: Pacchetti e moduli
translations_gpt: true
---

{% include menu.html %}

La parola chiave `package` crea un namespace. Dentro, puoi creare cose con `our`. Diventano parte del namespace. Puoi arrivarci dall'esterno. Usa il nome del package e il separatore `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Ottieni la variabile come `$Maths::pi`. Prima viene il sigillo, poi il nome del package, poi il nome della variabile. Chiami una subroutine come `Maths::double(...)`.

Sia `package` sia `module` creano un namespace. Ma fanno anche cose diverse. Un `module` è la scelta normale per il codice che usi di nuovo. Un semplice `package` è solo il namespace, senza niente in più. Anche una `class` crea un namespace. Parliamo delle classi nella [prossima parte](/it/oop). Una classe aggiunge anche gli strumenti per gli oggetti.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Quindi `module` ti dà un namespace. Un `package` da solo ti dà lo stesso tipo di namespace. Scegli tra i due in base a quello che vuoi fare. Usa `module` per le librerie. Usa `package` per avere solo un namespace. Più avanti, con gli oggetti, usa `class` per i tipi.

{% include nav.html %}
