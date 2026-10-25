---
title: 'Solution: Divisione tramite sottrazione'
---

{% include menu.html %}

La divisione è solo una sottrazione fatta molte volte. Il programma ha un ciclo `while` che sottrae `$b` da `$a`. Lo ripete finché `$a` non diventa minore di `$b`. La variabile `$n` conta i giri del ciclo. Questo numero è anche il risultato.

## Codice

Ecco il programma completo:

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

Esegui il programma alcune volte. Inizia con i valori dati, che danno una divisione esatta:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Poi prova altri valori. Per esempio, imposta `$b` a `20` e controlla che il risultato sia corretto:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
