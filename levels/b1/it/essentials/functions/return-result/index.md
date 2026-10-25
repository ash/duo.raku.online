---
title: Restituzione del risultato
---

{% include menu.html %}

Spesso le funzioni fanno qualcosa e restituiscono anche un risultato. Per esempio, nella programmazione funzionale, le funzioni non dovrebbero avere effetti collaterali. Stampare sulla console è un effetto collaterale di questo tipo. Ma Raku non ti impedisce di farlo. Vediamo come una funzione restituisce un valore. Vedremo anche come il codice chiamante lo riceve.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Qui, la funzione `add` prende due numeri e restituisce la loro somma. Usa un `return` esplicito. Il codice chiamante può usare il valore restituito come qualsiasi altro valore. Nel programma sopra, il valore viene assegnato a una variabile.

## L'ultimo valore calcolato

In Raku, un `return` esplicito non è sempre necessario. Puoi non scriverlo quando il risultato è l'ultimo valore che la funzione calcola. Così la nostra funzione `add` può essere più semplice:

```raku
sub add($x, $y) {
    $x + $y
}
```

Forse hai notato che la riga non ha il punto e virgola alla fine. Non serve, perché questa riga chiude il blocco di codice.

Funzioni piccole e semplici come questa sono spesso scritte su una sola riga. Questo rende il codice più compatto:

```raku
sub add($x, $y) { $x + $y }
```

## Nessun dato di ritorno

A volte devi uscire da una funzione prima della fine del suo corpo. Se la funzione non restituisce nessun risultato, usa `return` da solo.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is above the limit";
}
```

{% include nav.html %}
