---
title: Uso di `until`
---

{% include menu.html %}

Un ciclo `until` è l'opposto di un ciclo `while`. Esegue il blocco di codice finché la condizione non è `True`. Quindi gira mentre la condizione è `False`.

Ecco di nuovo il [programma della pagina precedente](../while). Ora ha `until` e una nuova condizione:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Inserisci un numero, che non sia maggiore di 10: ';
    say "Hai inserito $x.";
}
say "$x è maggiore di 10.";
```

Esegui il programma e guarda cosa stampa:

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

## `until` vs. `while`

Questi due programmi fanno la stessa cosa. Uno ha `while` e l'altro ha `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Guarda le due condizioni. Una è l'opposto dell'altra. `while` e `until` sono una coppia, come `if` e `unless`.

{% include nav.html %}
