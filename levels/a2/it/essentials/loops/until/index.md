---
title: Uso di `until`
---

{% include menu.html %}

Il ciclo `until` è l'opposto di `while`. Esegue il blocco di codice finché la condizione non diventa `True`. In altre parole, lo esegue mentre la condizione è `False`.

Ecco di nuovo il [programma della pagina precedente](../while). Ora usa `until` e una nuova condizione:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Inserisci un numero, che non sia maggiore di 10: ';
    say "Hai inserito $x.";
}
say "$x è maggiore di 10.";
```

Esegui il programma e guarda l'output:

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

Confronta queste due righe. Fanno la stessa cosa con `while` e `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Le due condizioni sono una l'opposto dell'altra. Quindi `while` e `until` lavorano in coppia, proprio come `if` e `unless`.

{% include nav.html %}
