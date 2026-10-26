---
title: Introspezione dei contenitori
---

{% include menu.html %}

L'_introspezione_ significa chiedere a un valore o a un contenitore informazioni su se stesso. Puoi chiedere il suo tipo, quale contenitore c'è dietro o come funziona dentro. Hai già usato uno strumento di introspezione, `.^name`, che stampa il tipo di un valore.

Raku ha una piccola famiglia di strumenti di questo tipo, e i loro nomi sono in lettere maiuscole: `WHAT`, `VAR`, `WHO` e `HOW`. A volte vengono chiamati _pseudo-metodi_. Questo perché il compilatore dà loro un significato speciale. Non li tratta come metodi normali. Questa sezione li esamina uno per uno.

Come promemoria, ecco di nuovo `.^name`. Questo contenitore non ha un vincolo di tipo, e ci mettiamo dentro valori diversi. `.^name` mostra come cambia il suo tipo:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

All'inizio, il contenitore è `Any`. Poi mostra il tipo del valore che contiene in quel momento.

{% include nav.html %}
