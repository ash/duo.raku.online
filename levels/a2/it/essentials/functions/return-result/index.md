---
title: Restituzione del risultato
---

{% include menu.html %}

Spesso una funzione fa qualcosa e restituisce anche un risultato. Nella programmazione funzionale, per esempio, le funzioni non devono avere effetti collaterali. Stampare sulla console è uno di questi effetti collaterali. Ma Raku ti permette di farlo. Vediamo come una funzione restituisce un valore. Vediamo anche come il codice chiamante prende questo valore.

```raku
sub add($x, $y) {
    return $x + $y;
}

my $sum = add(10, 20);
say $sum; # 30
```

Qui, la funzione `add` prende due numeri. Restituisce la loro somma. La funzione ha la parola `return` nel suo codice. Il codice chiamante può usare questo valore come ogni altro valore. Nel programma sopra, lo assegniamo a una variabile.

## L'ultimo valore

Il risultato può essere l'ultimo valore nel corpo della funzione. Allora, in Raku, non devi scrivere `return`. Così possiamo rendere più semplice la nostra funzione `add`:

```raku
sub add($x, $y) {
    $x + $y
}
```

Nota che la riga non ha il punto e virgola alla fine. La riga è l'ultima del blocco di codice. Così lì il punto e virgola non serve.

Funzioni piccole e semplici come questa spesso si scrivono su una riga. Così il codice è più corto:

```raku
sub add($x, $y) { $x + $y }
```

## Nessun dato da restituire

A volte una funzione deve uscire prima della fine del suo corpo. Se la funzione non restituisce un risultato, usa `return` senza valore.

```raku
sub test($x) {
    return if $x <= 10;
    say "$x is above the limit";
}
```

{% include nav.html %}
