---
title: 'Solution: Esaminare il risultato di `prompt` — Numeri'
---

{% include menu.html %}

## Codice

Ecco il programma completo. Risolve il problema. Stampa il valore che inserisci e il suo tipo.

```raku
my $n = prompt 'Inserisci un numero: ';
say $n;
say $n.WHAT;
```

🦋 Puoi trovare il codice sorgente nel file [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Esecuzioni di test

Esegui il programma alcune volte. Inserisci numeri di tipi diversi.

### Numeri interi

Prima proviamo gli interi. Prova interi positivi e negativi.

```console
$ raku exercises/what/prompt-numbers.raku
Inserisci un numero: 10
10
(IntStr)
```

Il tipo del risultato è `IntStr`. Questo tipo è incorporato in Raku. Ha le caratteristiche di `Int` e di `Str`.

### Numeri razionali

Ora proviamo un numero razionale. Ricorda: in Raku, un numero con il punto decimale è un `Rat`. Non è un numero in virgola mobile.

```console
$ raku exercises/what/prompt-numbers.raku
Inserisci un numero: 3.14
3.14
(RatStr)
```

Questa volta, il dato in `$n` ha il tipo `RatStr`. È un tipo combinato. È sia `Rat` che `Str`.

### Numeri in virgola mobile

Infine, prova un numero in notazione scientifica, con la lettera `e`. Ora probabilmente puoi indovinare l'output.

```console
$ raku exercises/what/prompt-numbers.raku
Inserisci un numero: 5e-14
5e-14
(NumStr)
```

Sì, il nuovo valore ha il tipo `NumStr`.

{% include nav.html %}
