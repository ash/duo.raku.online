---
title: Uso di `repeat`
---

{% include menu.html %}

Un blocco `while` o `until` può non essere mai eseguito se la condizione è `False` fin dall'inizio. Un blocco `repeat`, invece, viene sempre eseguito almeno una volta. La sua condizione viene controllata dopo il blocco. Per il controllo usi le stesse parole, `while` o `until`.

Dai un'occhiata a questo programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

La variabile `$x` parte da `100`. La condizione `while` controlla se `$x` è minore o uguale a `10`. Con questo valore la condizione è già `False`, ma il blocco viene comunque eseguito prima, una volta.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Ora modifichiamo il programma per usare `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Eseguilo per controllare che funzioni come ti aspetti:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
