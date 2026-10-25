---
title: Blocchi `if`
---

{% include menu.html %}

Il controllo condizionale `if` verifica una condizione. Quando la condizione è `True`, viene eseguito un blocco di codice.

```raku
if 10 > 4 {
    say 'La matematica funziona!';
}
```

Nota che non è necessario mettere la condizione tra parentesi. Ma puoi farlo, se vuoi.

Ovviamente, puoi usare senza problemi le variabili nei test:

```raku
my $flag = False;
if $flag {
    # . . . fai qualcosa
}
```

Se più controlli usano la stessa variabile, puoi mettere i confronti in una catena:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "La risposta corretta $x è data.";
}
```

Se la condizione non è soddisfatta, il suo blocco di codice non viene eseguito. Poi il programma continua come al solito.

```raku
say 'Inizio';
if False {
    say 'Questo non viene mai stampato.';
}
say 'Fine';
```

Questo programma stampa solo `Inizio` e `Fine`.

{% include nav.html %}
