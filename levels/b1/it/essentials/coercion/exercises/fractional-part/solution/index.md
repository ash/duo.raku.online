---
title: 'Solution: Parte frazionaria'
---

{% include menu.html %}

Per ottenere la parte frazionaria di un numero, sottrai la sua parte intera. Puoi ottenere la parte intera convertendo il numero in un `Int`.

## Codice

Qui sotto c'è una possibile soluzione:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Trova il programma nel file [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Output

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Commento

Prova lo stesso programma anche con numeri negativi, per esempio:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

In questo caso, il risultato dovrebbe essere anch'esso corretto:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
