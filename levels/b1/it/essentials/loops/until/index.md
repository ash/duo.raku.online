---
title: Uso di `until`
---

{% include menu.html %}

Il ciclo `until` fa l'opposto di `while`. Esegue il blocco di codice finché la condizione non diventa `True`. In altre parole, lo esegue finché la condizione è `False`.

Questo è il [programma della pagina precedente](../while), ma ora con `until` e una nuova condizione:

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

Confronta due programmi che fanno la stessa cosa, uno con `while` e uno con `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Come vedi, ogni condizione è l'opposto dell'altra. Quindi `while` e `until` formano una coppia, proprio come `if` e `unless`.

{% include nav.html %}
