---
title: 'Solution: Divisione tramite sottrazione'
---

{% include menu.html %}

La divisione è una sottrazione ripetuta tante volte. Il programma ha un ciclo `while`. Ogni volta, il ciclo toglie `$b` da `$a`. Lo fa finché `$a` non è minore di `$b`. La variabile `$n` conta i giri. Questo numero è la risposta.

## Codice

Ecco tutto il programma:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Trova il programma nel file [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Output

Esegui il programma alcune volte. Inizia con i numeri nel codice. Con questi numeri non avanza niente:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Poi prova altri numeri. Per esempio, cambia `$b` in `20`. Controlla se il risultato è giusto:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
