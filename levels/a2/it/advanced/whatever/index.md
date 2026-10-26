---
title: La stella Whatever
translations_gpt: true
---

{% include menu.html %}

Forse hai visto `*` in espressioni come `* * 2` o `* %% 2`. Le usi con `map` e `grep`. Questo `*` è la _Whatever star_ (stella Whatever). L'espressione intorno alla stella crea una piccola funzione. La funzione ha un argomento. Raku la crea proprio lì, sul posto. Questa sezione spiega che cos'è davvero la stella. Confronta anche la stella con un blocco. E mostra dove la stella da sola significa semplicemente “qualsiasi cosa tu voglia”.

## Una stella crea una funzione

Un'espressione può contenere `*`. Allora Raku trasforma tutta l'espressione in una funzione. Questa funzione è un `WhateverCode`. In questa funzione, la stella sta per l'argomento:

```raku
my $double = * * 2;

say $double.^name; # WhateverCode
say $double(21);   # 42
```

`* * 2` è una funzione. Prende un argomento e lo moltiplica per due. Per questo `(1..5).map(* * 2)` funziona. `map` riceve proprio questo tipo di funzione con un argomento.

## Whatever o un blocco

Un'espressione Whatever è un modo breve per scrivere una funzione. Puoi scrivere la stessa funzione anche come blocco. Queste tre righe fanno la stessa cosa:

```raku
* * 2
{ $_ * 2 }
-> $x { $x * 2 }
```

La forma Whatever non ha un nome di parametro. La forma a blocco usa la variabile topic `$_`. La forma pointy ha il nome `$x`. L'ultima, `-> $x { ... }`, è già da sola una piccola funzione. La studierai più avanti, in [Subroutine anonime](/it/advanced/anonymous-subroutines). Qui vedila semplicemente come una terza forma della stessa funzione. Questa funzione ha un argomento. Per un'espressione semplice, la stella è la forma più corta. Per questo le persone la usano spesso con `map`, `grep` e `sort`:

```raku
say (1..5).map(* * 2);            # (2 4 6 8 10)
say (1..5).map({ $_ * 2 });       # (2 4 6 8 10)
say (1..5).map(-> $x { $x * 2 }); # (2 4 6 8 10)
```

Usa un **blocco** se il codice ha bisogno di più di un'espressione. Un blocco è meglio anche se un nome chiaro per il parametro aiuta. Usa la **stella** se basta una breve espressione.

## Piu di una stella

Ogni `*` nell'espressione è un argomento separato. Gli argomenti vengono in ordine. Quindi due stelle creano una funzione con **due** argomenti:

```raku
my $add = * + *;

say $add(3, 4); # 7
```

Qui `* + *` è una funzione con due argomenti. Li somma. Per esempio, possono essere il totale fino a ora e l'elemento successivo.

## La stella Whatever da sola

La stella da sola, `*`, significa “qualsiasi cosa”. Può significare “tutto quello che c'è”. Può anche significare “nessun limite”. Ecco due usi comuni:

```raku
my @a = 10, 20, 30;
say @a[*-1];        # 30  — * è la lunghezza dell'array, quindi *-1 è l'ultimo indice

say (1..*).head(3); # (1 2 3)  — 1..* è un intervallo aperto
```

In `@a[*-1]`, la stella è il numero di elementi. In `1..*`, la stella significa “nessun limite superiore”. A volte la stella crea una funzione. A volte significa “qualsiasi cosa tu voglia”. In ogni caso, è una delle forme brevi più utili di Raku.

{% include nav.html %}
