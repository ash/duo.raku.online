---
title: Pragma
---

{% include menu.html %}

Un _pragma_ sembra un modulo. Lo carichi con `use`. Ma non porta nuovo codice. Invece, cambia una regola della compilazione. Il cambiamento vale fino alla fine dello scope attuale. Attivi un pragma con `use`. Se ha senso, puoi disattivarlo con `no`.

Il pragma più importante è `strict`. In Raku è **attivo di default**. Con questo pragma, devi dichiarare ogni variabile prima di usarla. Così Raku trova gli errori di battitura nei nomi delle variabili. Un nome sbagliato non crea in silenzio una nuova variabile.

`no strict` disattiva `strict`. Allora questa regola non c'è più. Ora puoi assegnare un valore a una variabile senza `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Con il normale `strict`, questo `$x = 42` senza `my` è un errore. Raku lo mostra durante la compilazione: *Variable '$x' is not declared*. La riga `no strict` disattiva questa regola. Questo dura fino alla fine dello scope.

Ci sono anche altri pragma. Con `fatal`, un fallimento silenzioso lancia un'eccezione. È utile quando sai già gestire le eccezioni. `isms` permette alcuni modi tipici di scrivere codice presi da altri linguaggi. `variables` cambia le regole per le variabili. L'effetto di un pragma è _lessicale_. Funziona solo fino alla fine del suo blocco. Così puoi rendere una regola più severa o meno severa. Puoi farlo proprio dove ti serve nel codice.

Un pragma prende un argomento. È `lib`. Raku cerca i moduli in una lista di directory. `lib` aggiunge una directory a questa lista. Funziona come l'opzione `-I` della riga di comando. Ma lo scrivi dentro il programma:

```raku
use lib 'lib';
```

Ti servirà quando scriverai e caricherai i tuoi [moduli](/it/advanced/modules-basics/using-modules).

{% include nav.html %}
