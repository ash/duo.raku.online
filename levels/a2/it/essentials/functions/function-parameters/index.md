---
title: Parametri delle funzioni
---

{% include menu.html %}

Ora passiamo dei dati a una funzione. Una funzione può prendere dei parametri. Scrivili tra parentesi subito dopo il nome della funzione.

```raku
sub greet($name) {
    say "Hello, $name!";
}
```

Ora puoi usare la funzione. Puoi passarle argomenti diversi:

```raku
greet('Alla');
greet('Karl');
```

Chiamiamo la stessa funzione due volte. Ora i risultati sono diversi:

```console
$ raku t.raku
Hello, Alla!
Hello, Karl!
```

%%tipblock

## Parametro o argomento

Le persone usano spesso queste due parole nello stesso modo. Tutte e due le parole parlano della ‘stessa cosa’. Ma la guardano da lati diversi.

* Un parametro è quello che la funzione si aspetta di ricevere.
* Un argomento è quello che passi alla funzione.

Nell'esempio sopra, `$name` è il parametro della funzione. `'Alla'` e `'Karl'` sono i suoi argomenti.

%%/tipblock

## Più parametri

Una funzione può prendere più di un parametro. Allora metti delle virgole tra i parametri:

```raku
sub add($x, $y) {
    say $x + $y;
}

add(10, 20); # 30
```

## Nessun parametro

Una funzione può anche non avere nessun parametro. Allora puoi scrivere una coppia di parentesi vuote. Oppure puoi non mettere le parentesi. Lo abbiamo fatto [all'inizio di questa sezione](../).

```raku
sub greet() {
    say 'Hello, World!';
}

greet();
```

## Firma

L'elenco dei parametri di una funzione è la sua _firma_.

{% include nav.html %}
