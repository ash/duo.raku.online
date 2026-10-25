---
title: 'Solution: Stampa l''avviso'
---

{% include menu.html %}

## Codice

Ecco la soluzione:

```raku
my $age = prompt 'Qual è la tua età? ';

if $age < 0 {
    note 'Hai inserito un numero negativo!';
}
else {
    say "La tua età è $age";
}
```

🦋 Trova il programma nel file [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Output

Ecco due esempi:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Qual è la tua età? 20
La tua età è 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Qual è la tua età? -1
Hai inserito un numero negativo!
```

Il messaggio va davvero su `STDERR`? Per controllarlo, reindirizza l'output. Allora non vedi la domanda sulla tua età. Ma puoi comunque inserire un numero. E vedi ancora l'avviso.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Hai inserito un numero negativo!
```

{% include nav.html %}
