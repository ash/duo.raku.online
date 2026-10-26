---
title: Pragma
---

{% include menu.html %}

Un _pragma_ sembra un modulo che carichi con `use`. Ma non importa nessun codice. Invece, cambia una regola di compilazione per il resto dello scope attuale. Lo attivi con `use` e, dove ha senso, lo disattivi con `no`.

Il pragma più importante, `strict`, è **attivo di default** in Raku. Ti chiede di dichiarare ogni variabile prima di usarla. Per questo Raku trova un errore di battitura nel nome di una variabile. Senza questo pragma, l'errore creerebbe in silenzio una nuova variabile.

Se disattivi `strict` con `no strict`, questa regola non vale più. Allora puoi assegnare un valore a una variabile mai dichiarata con `my`:

```raku
no strict;

$x = 42;
say $x; # 42
```

Con il `strict` predefinito, questo semplice `$x = 42` sarebbe un errore di compilazione. Il messaggio è *Variable '$x' is not declared*. La riga `no strict` allenta la regola fino alla fine dello scope che la contiene.

Alcuni altri pragma sono `fatal`, `isms` e `variables`. `fatal` trasforma un fallimento silenzioso in un'eccezione lanciata. Questo è utile quando sai già gestire le eccezioni. `isms` permette modi di scrivere che vengono da altri linguaggi. `variables` ti permette di adattare le regole per le variabili. L'effetto di un pragma è _lessicale_. Dura solo fino alla fine del blocco in cui compare. Così puoi rendere una regola più severa o più libera. Puoi farlo esattamente nella parte di codice dove ti serve.

Un pragma prende un argomento: `lib`. Aggiunge una directory alla lista in cui Raku cerca quando carica i moduli. Fa la stessa cosa dell'opzione `-I` della riga di comando, ma dentro il programma:

```raku
use lib 'lib';
```

Comincerai a usarlo quando inizierai a scrivere e caricare i tuoi [moduli](/it/advanced/modules-basics/using-modules).

{% include nav.html %}
