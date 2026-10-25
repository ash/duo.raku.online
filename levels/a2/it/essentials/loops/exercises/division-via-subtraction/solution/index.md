---
title: 'Solution: Divisione tramite sottrazione'
---

{% include menu.html %}

La divisione è una sottrazione ripetuta tante volte. Il programma ha un ciclo `while`. Il ciclo toglie `$b` da `$a`. Lo ripete finché `$a` non è minore di `$b`. La variabile `$n` conta i giri del ciclo. Questo numero è anche il risultato che ci serve.

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

Esegui il programma alcune volte. Prima usa i valori dati. Con questi valori la divisione è esatta:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Poi prova altri valori. Per esempio, cambia `$b` in `20` e controlla se il risultato è corretto:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
