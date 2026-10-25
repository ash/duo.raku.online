---
title: Lettura degli argomenti della riga di comando
---

{% include menu.html %}

La funzione `MAIN` segna chiaramente l'inizio del programma, e questo è utile. Ma è utile anche perché i suoi argomenti ricevono i valori dalla riga di comando.

Puoi leggere gli argomenti della riga di comando in due modi. Il primo è l'array [`@*ARGS`](/it/essentials/positionals/args-array), che abbiamo già usato. Ora vediamo il secondo modo.

Ecco un programma che somma due numeri.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Ecco come puoi eseguire il programma. Stampa la somma dei suoi due argomenti:

```console
$ raku t.raku 123 45
168
```

Come qualsiasi altra funzione, `MAIN` può avere valori predefiniti per i suoi argomenti. Questo è possibile per alcuni di loro, o anche per tutti. Per esempio:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Se non dai il secondo argomento, il programma usa il valore predefinito:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
