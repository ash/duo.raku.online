---
title: Parametri delle funzioni
---

{% include menu.html %}

Ora è il momento di passare dei dati a una funzione. Una funzione può prendere parametri, che elenchi tra parentesi subito dopo il suo nome.

```raku
sub greet($name) {
    say "Hello, $name!";
}
```

Ora puoi usare la funzione e passarle argomenti diversi:

```raku
greet('Alla');
greet('Karl');
```

Ora le due chiamate della stessa funzione danno risultati diversi:

```console
$ raku t.raku
Hello, Alla!
Hello, Karl!
```

%%tipblock

## Parametro o argomento

Spesso le persone usano questi due termini come se fossero uguali. Entrambi indicano ‘la stessa cosa’, ma da punti di vista diversi.

* Un parametro è ciò che la funzione si aspetta.
* Un argomento è ciò che passi alla funzione.

Nell'esempio sopra, `$name` è il parametro della funzione. I suoi argomenti sono `'Alla'` e `'Karl'`.

%%/tipblock

## Più parametri

Una funzione può prendere più di un parametro. In questo caso, elencali tutti separati da virgole:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Nessun parametro

Va bene anche se una funzione non prende nessun parametro. Allora puoi aggiungere una coppia di parentesi vuote oppure non metterle per niente. Non le abbiamo messe [all'inizio di questa sezione](../).

```raku
sub greet() {
    say 'Hello, World!';
}

greet();
```

## Firma

L'elenco dei parametri di una funzione è chiamato _firma_.

{% include nav.html %}
