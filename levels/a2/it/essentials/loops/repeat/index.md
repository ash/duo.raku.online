---
title: Uso di `repeat`
---

{% include menu.html %}

A volte Raku non esegue affatto un blocco `while` o `until`. Succede quando la condizione è `False` all'inizio. Un blocco `repeat` è diverso: Raku lo esegue sempre almeno una volta. Raku controlla la condizione dopo il blocco. Per il controllo usi le stesse parole, `while` o `until`.

Guarda questo programma.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

All'inizio la variabile `$x` vale `100`. La condizione `while` controlla se `$x` è minore o uguale a `10`. Con questo valore, la condizione è già `False`. Ma Raku esegue comunque prima il blocco di codice.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Ora cambiamo il programma e usiamo `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Eseguilo e controlla se funziona:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
