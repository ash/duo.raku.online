---
title: 'Solution: Conta e stampa degli argomenti della riga di comando'
---

{% include menu.html %}

Per questo programma va bene un ciclo `for`.

## Codice

```raku
for ^@*ARGS -> $n {
    say "{$n + 1}. @*ARGS[$n]";
}
```

🦋 Trova il programma nel file [count-and-print-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/count-and-print-arguments.raku).

## Output

Esegui il programma. Controlla che stampi gli argomenti e i numeri di riga:

```console
$ raku exercises/positionals/count-and-print-arguments.raku one two three four
1. one
2. two
3. three
4. four
```

## Discussione

Questo programma usa alcuni trucchi utili. Prima di tutto, il ciclo `for` scorre un [intervallo fatto con `^`](/it/essentials/ranges/excluding-endpoints). L'intervallo inizia da 0. Arriva fino al valore di `@*ARGS`. Ma quest'ultimo valore non è nell'intervallo. Qui `@*ARGS` [dà](/it/essentials/positionals/arrays#size) la lunghezza dell'array.

Il primo elemento di un array ha l'indice `0`. Ma il compito vuole i numeri di riga da `1`. Così aggiungiamo 1 all'indice. Il programma lo fa [in un blocco di codice](/it/essentials/strings/code-interpolation) dentro una stringa: `"{$n + 1} ..."`.

{% include nav.html %}
