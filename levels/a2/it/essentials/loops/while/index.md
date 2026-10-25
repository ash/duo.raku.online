---
title: Uso di `while`
---

{% include menu.html %}

Il ciclo `while` ha una condizione e un blocco di codice. Raku esegue il blocco più e più volte _mentre_ la condizione è `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Inserisci un numero, che non sia maggiore di 10: ';
    say "Hai inserito $x.";
}
say "$x è maggiore di 10.";
```

Il programma ti chiede un numero. Se il numero non è più grande di 10, il ciclo si ripete. Quando il numero è più grande di 10, la condizione `$x <= 10` non è più vera. Allora il ciclo si ferma e il programma passa alla riga successiva.

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
