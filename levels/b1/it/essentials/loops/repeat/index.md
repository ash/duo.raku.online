---
title: Uso di `repeat`
---

{% include menu.html %}

I blocchi `while` e `until` potrebbero non essere mai eseguiti se la condizione è `False` all'inizio. Il blocco `repeat`, invece, viene sempre eseguito almeno una volta. La condizione viene controllata dopo il blocco di codice. Per il controllo, usi le stesse parole `while` o `until`.

Guarda questo programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

La variabile `$x` parte con il valore `100`, e la condizione `while` controlla se `$x` è minore o uguale a `10`. Con questo valore la condizione è già `False`, ma il blocco di codice viene comunque eseguito prima, una volta.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Modifichiamo il programma per usare invece `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Eseguilo per verificare che funzioni come previsto:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
