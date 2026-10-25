---
title: Uso di `elsif`
---

{% include menu.html %}

Finora abbiamo imparato `if` e `else`. Ma se vuoi fare una catena di test? Raku ha almeno due modi per farlo. In realtà, ce ne sono anche di più.

Un modo è usare una catena di blocchi `if`, `elsif` e `else`. Nota come si scrive `elsif`. Non è `elseif` e non è `else if`.

```raku
my $x = prompt 'Inserisci il numero: ';
if $x > 100 {
    say "$x è maggiore di 100.";
}
elsif $x > 50 {
    say "$x è maggiore di 50.";
}
elsif $x > 25 {
    say "$x è maggiore di 25.";
}
else {
    say "$x è 25 o minore.";
}
```

Questo programma ha tre rami e tre test, uno dopo l'altro. Non appena una delle condizioni è `True`, viene eseguito il blocco di codice corrispondente. Se nessun controllo è `True`, viene eseguito il blocco `else`.

Ecco alcune esecuzioni di prova del programma. Ogni blocco viene eseguito in una di esse:

```console
$ raku t.raku
Inserisci il numero: 120
120 è maggiore di 100.

$ raku t.raku
Inserisci il numero: 75      
75 è maggiore di 50.

$ raku t.raku
Inserisci il numero: 30
30 è maggiore di 25.

$ raku t.raku
Inserisci il numero: 10
10 è 25 o minore.
```

Un altro modo è usare la coppia [`given` e `when`](/it/advanced/given-when), che impareremo più avanti.

{% include nav.html %}
