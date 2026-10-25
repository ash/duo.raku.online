---
title: Uso di `while`
---

{% include menu.html %}

Un ciclo `while` ha una condizione e un blocco di codice. La condizione è `True` o `False`. Raku esegue il blocco più e più volte _mentre_ la condizione è `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Inserisci un numero, che non sia maggiore di 10: ';
    say "Hai inserito $x.";
}
say "$x è maggiore di 10.";
```

Il programma ti chiede un numero. Se il numero è 10 o meno, il ciclo gira di nuovo. Se il numero è più grande di 10, la condizione `$x <= 10` è `False`. Allora il ciclo si ferma. Il programma passa alla riga successiva.

```console
$ raku t.raku
Inserisci un numero, che non sia maggiore di 10: 10
Hai inserito 10.
Inserisci un numero, che non sia maggiore di 10: 4
Hai inserito 4.
Inserisci un numero, che non sia maggiore di 10: 1
Hai inserito 1.
Inserisci un numero, che non sia maggiore di 10: 20
Hai inserito 20.
20 è maggiore di 10.
```

{% include nav.html %}
