---
title: La stella Whatever
translations_gpt: true
---

{% include menu.html %}

Forse hai visto `*` in espressioni come `* * 2` o `* %% 2`. Compaiono nelle chiamate a `map` e `grep`. Quel `*` è la _Whatever star_ (stella Whatever). L'espressione intorno alla stella crea una piccola funzione con un argomento, proprio sul posto. Questa sezione spiega che cos'è davvero la stella e che rapporto ha con un blocco. Mostra anche dove la stella da sola significa semplicemente “qualsiasi cosa tu voglia”.

## Una stella crea una funzione

Quando un'espressione contiene `*`, Raku trasforma tutta l'espressione in una funzione, un `WhateverCode`. In questa funzione, la stella rappresenta l'argomento:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` è una funzione che moltiplica per due il suo unico argomento. Ecco perché `(1..5).map(* * 2)` funziona. `map` riceve proprio una funzione così, con un argomento.

## Whatever a confronto con un blocco

Un'espressione Whatever è un modo più breve per scrivere una funzione. Potresti scrivere questa funzione anche come blocco. Queste tre forme sono uguali:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

La forma Whatever non dà un nome al parametro. La forma a blocco usa la variabile topic `$_`, e la forma pointy usa il nome `$x`. L'ultima, `-> $x { ... }`, è già da sola una piccola funzione. La studierai bene in [Subroutine anonime](/it/advanced/anonymous-subroutines). Qui leggila solo come un terzo modo di scrivere la stessa funzione a un argomento. Per un'espressione semplice, la stella è la forma più corta. Per questo è così comune con `map`, `grep` e `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Scegli un **blocco** quando il codice ha bisogno di più di un'espressione. Un blocco va bene anche quando aiuta un nome chiaro per il parametro. Scegli la **stella** quando basta un'espressione breve.

## Piu di una stella

Ogni `*` nell'espressione è un argomento a sé, in ordine. Quindi due stelle creano una funzione con **due** argomenti:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Qui `* + *` è una funzione con due argomenti, e li somma. Per esempio, può sommare un totale parziale e l'elemento successivo.

## Il Whatever da solo

Da sola, `*` significa “qualsiasi cosa”: tutto quello che c'è, o nessun limite. Ecco due usi comuni:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * è la lunghezza dell'array, quindi *-1 è l'ultimo indice

say (1..*).head(3); # (1 2 3)  — 1..* è un intervallo aperto
```

In `@a[*-1]`, la stella rappresenta il numero di elementi. In `1..*`, significa “nessun limite superiore”. La stella può costruire una funzione o significare “qualsiasi cosa tu voglia”. In ogni caso, è una delle forme brevi più utili in Raku.

{% include nav.html %}
