---
title: 'Solution: Conta e stampa degli argomenti della riga di comando'
---

{% include menu.html %}

In questo programma, un ciclo `for` è una buona scelta.

## Codice

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Trova il programma nel file [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Output

Esegui il programma e controlla che stampi gli argomenti con i numeri di riga:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discussione

Questo programma usa alcuni trucchi comodi. Prima di tutto, il ciclo `for` scorre l'[intervallo fatto con `^`](/it/essentials/ranges/excluding-endpoints). Quindi l'intervallo inizia da 0. Arriva fino al valore di `@*ARGS`, ma non lo include. In questo contesto, `@*ARGS` [restituisce](/it/essentials/positionals/arrays#size) la lunghezza dell'array.

Il primo elemento di un array ha indice `0`. Ma il compito chiede di contare le righe da `1`. Questo piccolo spostamento viene calcolato [dentro un blocco di codice](/it/essentials/strings/code-interpolation) in una stringa: `"{$n + 1} ..."`.

{% include nav.html %}
