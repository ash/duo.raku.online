---
title: Uso di `elsif`
---

{% include menu.html %}

Ora conosci `if` e `else`. Ma se ti servono molti test, uno dopo l'altro? Raku ha almeno due modi per farlo. In realtà, ne ha anche di più.

Un modo è una catena di blocchi: `if`, `elsif` e `else`. Guarda come scriviamo `elsif`. Non è `elseif`. E non è neanche `else if`.

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

Questo programma ha tre rami. Ha tre test, uno dopo l'altro. Appena una condizione è `True`, Raku esegue il suo blocco di codice. Se nessun test è `True`, Raku esegue il blocco `else`.

Ecco alcune esecuzioni di prova del programma. Insieme, usano tutti i blocchi:

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

Un altro modo è la coppia [`given` e `when`](/it/advanced/given-when). La impariamo più avanti.

{% include nav.html %}
