---
title: Blocchi `if`
---

{% include menu.html %}

`if` è un controllo condizionale. Verifica una condizione. Se la condizione è `True`, `if` esegue un blocco di codice.

```raku
if 10 > 4 {
    say 'La matematica funziona!';
}
```

Non serve mettere la condizione tra parentesi tonde. Ma puoi farlo, se vuoi.

Certo, puoi usare variabili nei test:

```raku
my $flag = False;
if $flag {
    # . . . fai qualcosa
}
```

A volte due o più controlli usano la stessa variabile. Allora puoi scrivere i confronti come una catena:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "La risposta corretta $x è data.";
}
```

A volte la condizione è `False`. Allora Raku non esegue il blocco di codice. Il programma va semplicemente avanti.

```raku
say 'Inizio';
if False {
    say 'Questo non viene mai stampato.';
}
say 'Fine';
```

Questo programma stampa solo `Inizio` e `Fine`.

{% include nav.html %}
