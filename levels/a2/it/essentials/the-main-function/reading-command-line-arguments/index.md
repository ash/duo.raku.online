---
title: Lettura degli argomenti della riga di comando
---

{% include menu.html %}

La funzione `MAIN` è utile per due motivi. Primo, mostra chiaramente dove inizia il programma. Secondo, ha degli argomenti. Gli argomenti prendono i valori dalla riga di comando.

Ci sono due modi per leggere gli argomenti della riga di comando. Un modo è l'array [`@*ARGS`](/it/essentials/positionals/args-array). Lo abbiamo già usato. Ora guardiamo il secondo modo.

Guarda questo programma. Somma due numeri.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Esegui il programma così. Stampa la somma dei suoi due argomenti:

```console
$ raku t.raku 123 45
168
```

Come ogni altra funzione, `MAIN` può avere valori predefiniti per i suoi argomenti. Alcuni argomenti possono averli. Anche tutti gli argomenti possono averli. Per esempio:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

A volte non c'è il secondo argomento. Allora il programma usa il valore predefinito:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
