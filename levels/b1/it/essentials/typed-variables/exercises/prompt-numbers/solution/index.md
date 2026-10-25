---
title: 'Solution: Esaminare il risultato di `prompt` — Numeri'
---

{% include menu.html %}

## Codice

Ecco il programma completo. Risolve il problema e stampa sia il valore inserito che il suo tipo.

```raku
my $n = prompt 'Inserisci un numero: ';
say $n;
say $n.WHAT;
```

🦋 Puoi trovare il codice sorgente nel file [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Esecuzioni di test

Esegui il programma più volte e inserisci numeri di diversi tipi.

### Numeri interi

Prima proviamo i numeri interi, sia positivi che negativi.

```console
$ raku exercises/what/prompt-numbers.raku
Inserisci un numero: 10
10
(IntStr)
```

Il risultato ha il tipo `IntStr`. Questo tipo incorporato ha le caratteristiche sia di `Int` che di `Str`.

### Numeri razionali

Ora proviamo un numero razionale. Ricorda che in Raku, se scrivi un numero con il punto decimale, ottieni un numero `Rat`. Non è un numero in virgola mobile.

```console
$ raku exercises/what/prompt-numbers.raku
Inserisci un numero: 3.14
3.14
(RatStr)
```

Questa volta, il programma dice che il dato in `$n` ha il tipo `RatStr`. È un tipo che combina `Rat` e `Str`.

### Numeri in virgola mobile

Infine, prova un numero in notazione scientifica. Ormai probabilmente puoi indovinare l'output.

```console
$ raku exercises/what/prompt-numbers.raku
Inserisci un numero: 5e-14
5e-14
(NumStr)
```

Come previsto, il nuovo valore è del tipo `NumStr`.

{% include nav.html %}
